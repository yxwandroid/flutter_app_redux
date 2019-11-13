import 'package:flutter_app_redux/common/utils/style_utils.dart';
import 'package:flutter_app_redux/widget/sm_toast_widget.dart';
import 'package:oktoast/oktoast.dart';
const int toastDuration = 1500;

class ToastUtil {
  static ToastFuture showRed(String msg) {
    return showToastWidget(
      SMToastWidget(
        color: SMColors.toastRed,
        content: msg,
      ),
      duration: Duration(milliseconds: toastDuration),
    );

  }

  static ToastFuture showGreen(String msg) {
    return showToastWidget(
      SMToastWidget(
        color: SMColors.toastGreen,
        content: msg,
      ),
      duration: Duration(milliseconds: toastDuration),
    );
  }
}
