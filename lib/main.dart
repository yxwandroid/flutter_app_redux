import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/redux/index.dart';
import 'package:flutter_app_redux/common/redux/main_state.dart';
import 'package:flutter_app_redux/common/redux/user_state.dart';
import 'package:flutter_app_redux/common/store/store_manager.dart';
import 'package:flutter_app_redux/navigator/navigator_utils.dart';
import 'package:flutter_app_redux/page/av_redux_list_page.dart';
import 'package:flutter_app_redux/page/login_page.dart';
import 'package:flutter_app_redux/page/splash_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:oktoast/oktoast.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(new MyApp());
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

  @override
  void initState() {
    super.initState();
    print("初始化应用的时候初始化store管理者");
    StoreManager.setStore(store);
  }

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: StoreProvider<MainState>(
        store: store,
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
}
