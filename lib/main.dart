import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/config/config.dart';
import 'package:flutter_app_redux/common/event/event.dart';
import 'package:flutter_app_redux/common/model/entity_factory.dart';
import 'package:flutter_app_redux/common/net/api_adress.dart';
import 'package:flutter_app_redux/common/net/code.dart';
import 'package:flutter_app_redux/common/redux/index.dart';
import 'package:flutter_app_redux/common/redux/main_state.dart';
import 'package:flutter_app_redux/common/redux/user_state.dart';
import 'package:flutter_app_redux/common/store/store_manager.dart';
import 'package:flutter_app_redux/common/utils/log_util.dart';
import 'package:flutter_app_redux/common/utils/screen_util.dart';
import 'package:flutter_app_redux/common/utils/toast_util.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/page/splash_page.dart';
import 'package:flutter_bugly/flutter_bugly.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:oktoast/oktoast.dart';
import 'package:redux/redux.dart';

void main() {
//  runApp(new MyApp());
  if (Config.REPORT_CRASH) {
    FlutterBugly.postCatchedException(() {
      runApp(MyApp());
    });
  } else {
    runApp(MyApp());
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final store = new Store<MainState>(appReducer,
      initialState: MainState(
          userState: UserState.initStore(),
          avListState: AVListState.initStore()));

  StreamSubscription stream;

  @override
  void initState() {
    super.initState();

    stream =
        EventBusHelper.getEventTypeStream<HttpErrorEvent>().listen((event) {
      errorHandleFunction(event.code, event.message, event.noTip);
    });
    EntityCreatorFactory.registerAllCreator();
  }




  @override
  void dispose() {
    super.dispose();
    if (stream != null) {
      stream.cancel();
      stream = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<MainState>(
      store: store,
      child: OKToast(
        child: new MaterialApp(
          title: 'Flutter 模板工程',
//          theme: new ThemeData(
//            primarySwatch: Colors.blue,
//          ),
          navigatorObservers: [
            NavigatorUtils.getInstance(),
          ],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale.fromSubtags(languageCode: 'zh'),
          ],
          initialRoute: SplashPage.sName,
          routes: NavigatorUtils.configRoutes,
        ),
      ),
    );
  }

  errorHandleFunction(int code, message, noTip) {
    switch (code) {
      /////////////一定提示//////////////
      case 401:
        break;
      case Code.STATUS_CODE_UPLOAD_FAILURE:
        //上传失败
        ToastUtil.showRed('上传失败');
        break;

      ////////////////线上不提示Dio报错///////////
      case Code.STATUS_CODE_DIO_ERROR:
        if (Config.API_SETTING != APIType.PRODUCTION)
          ToastUtil.showRed('Dio报错');
        break;

      /////////////按需提示//////////////
      case Code.STATUS_CODE_NETWORK_ERROR:
        if (!noTip) ToastUtil.showRed('网络错误');
        break;
      case 403:
        if (!noTip) ToastUtil.showRed('403权限错误');
        break;
      case 404:
        if (!noTip) ToastUtil.showRed('404错误');
        break;
      case Code.STATUS_CODE_NETWORK_TIMEOUT:
        //超时
        if (!noTip) ToastUtil.showRed('请求超时');
        break;
      default:
        if (!noTip) ToastUtil.showRed("network_error_unknown " + message);
        break;
    }
  }
}
