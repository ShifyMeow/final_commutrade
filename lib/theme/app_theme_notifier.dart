import 'package:flutter/material.dart';

class AppThemeNotifier extends InheritedWidget {
  final Function(ThemeMode) changeTheme;

  const AppThemeNotifier({
    Key? key,
    required this.changeTheme,
    required Widget child,
  }) : super(key: key, child: child);

  static AppThemeNotifier of(BuildContext context) {
    final AppThemeNotifier? result = context.dependOnInheritedWidgetOfExactType<AppThemeNotifier>();
    assert(result != null, 'No AppThemeNotifier found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(AppThemeNotifier oldWidget) {
    return oldWidget.changeTheme != oldWidget.changeTheme;
  }
}