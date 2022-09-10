import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppOptions with ChangeNotifier {
  AppOptions({
    ThemeMode? themeMode,
    double? textScaleFactor,
    Locale? locale,
    // required this.timeDilation,
    TargetPlatform? platform,
    bool? isTestMode,
  })  : _textScaleFactor = textScaleFactor ?? 1.0,
        _locale = locale ?? const Locale('en', 'US'),
        _themeMode = themeMode ?? ThemeMode.system,
        _platform = platform ?? defaultTargetPlatform,
        _isTestMode = isTestMode ?? false;

  ThemeMode _themeMode;

  final double _textScaleFactor;
  final Locale? _locale;
  // final double timeDilation;
  final TargetPlatform? _platform;
  final bool _isTestMode; // True for integration tests.

  ThemeMode get themeMode => _themeMode;

  TargetPlatform get platform => _platform ?? defaultTargetPlatform;

  /// Toggle between light and dark theme.
  void switchThemeMode() {
    _themeMode =
        _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
