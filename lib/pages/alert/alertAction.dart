import 'package:flutter/material.dart';

import '../doctor/patient_alert.dart';

class LoginInfo extends InheritedWidget {
  var info;

// 方便其子 Widget 在 Widget 树中找到它
  static LoginInfo of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: LoginInfo)
          as LoginInfo;
  final int count;
  LoginInfo(
    this.count, {
    Key key,
    @required this.info,
    @required Widget child,
  }) : super(key: key, child: child);
// 判断是否需要更新
  @override
  bool updateShouldNotify(LoginInfo oldWidget) => info != oldWidget.info;
}
