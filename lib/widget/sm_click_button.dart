import 'package:flutter/material.dart';
import 'package:flutter_app_redux/common/utils/common_util.dart';

class SMClickButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;

  SMClickButton({Key key, this.child, this.onTap}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      child: child,
      onTap: () => CommonUtils.throttle(onTap),
    );
  }
}
