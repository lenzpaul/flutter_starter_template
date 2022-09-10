import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_sandbox/core/app_themes_data.dart';

/// The app options.
///
/// This class is used to change the theme, locale, platform, etc.
///
/// The [AppOptions] are provided to the app using the [ChangeNotifierProvider].
///
/// See also:
///
/// * [AppThemeData], the app theme data.
class AppOptions with ChangeNotifier {
  AppOptions({
    ThemeMode? themeMode,
    Locale? locale,
    TargetPlatform? platform,
    // double? textScaleFactor,
    // required this.timeDilation,
    // bool? isTestMode,
  })  : _locale = locale ?? const Locale('en', 'US'),
        _themeMode = themeMode ?? ThemeMode.system,
        _platform = platform ?? defaultTargetPlatform;
  // _textScaleFactor = textScaleFactor ?? 1.0,
  // _isTestMode = isTestMode ?? false;

  ThemeMode _themeMode;

  Locale? _locale;
  final TargetPlatform? _platform;

  ThemeMode get themeMode => _themeMode;

  TargetPlatform get platform => _platform ?? defaultTargetPlatform;

  Locale? get locale => _locale;
  set locale(Locale? locale) {
    _locale = locale;
    notifyListeners();
  }

  /// Toggle between light and dark theme.
  void switchThemeMode() {
    _themeMode =
        _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }

  static of(BuildContext context) {
    return Provider.of<AppOptions>(context, listen: false);
  }

  // bool get isTestMode => _isTestMode;

  // FIXME: Implement textScaleFactor
  // final double _textScaleFactor;
  // FIXME: Implement timeDilation
  // final double timeDilation;
  // FIXME: Implement isTestMode
  // final bool _isTestMode; // True for integration tests.
}
