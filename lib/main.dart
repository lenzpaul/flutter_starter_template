// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
// import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:gohash_app/core/app_options.dart';
// import 'package:gohash_app/core/app_themes_data.dart';
// import 'package:gohash_app/dashboard/views/dashboard_old.dart';
// import 'package:gohash_app/dashboard/views/dashboard.dart';
import 'package:provider/provider.dart';
import 'package:template_sandbox/l10n/localizations_gen.dart';

// relative imports
import 'core/app_options.dart';
import 'core/app_themes_data.dart';
// import 'core/'

void main() {
  runApp(
    App(
      initialView: Container(
        color: Colors.red,
      ),
    ),
  );
}

/// The main app widget.
///
/// This widget is the root of the app and provides the [MaterialApp] widget.
///
/// It also provides the [AppOptions], [AppThemeData], and [AppLocalizations] to
/// the app.
///
/// The [AppOptions] are used to change the theme, locale, platform, etc.
///
/// The [AppOptions] are provided to the app using the [ChangeNotifierProvider].

class App extends StatelessWidget {
  const App({Key? key, required this.initialView}) : super(key: key);

  final Widget initialView;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppOptions>(
      create: (_) {
        return AppOptions(
          themeMode: ThemeMode.dark, // default to dark theme
          textScaleFactor: null,
          locale: null,
          platform: null,
          isTestMode: null,
        );
      },
      builder: (context, _) {
        final options = Provider.of<AppOptions>(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false, // hide debug banner

          // Use `onGenerateTitle` to generate title based on localizations.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          //
          // Theme
          //
          themeMode: options.themeMode,
          theme: AppThemeData.lightThemeData.copyWith(
            platform: options.platform,
          ),
          darkTheme: AppThemeData.darkThemeData.copyWith(
            platform: options.platform,
          ),

          //
          // Localizations
          //
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,

          //
          home: initialView,
        );
      },
    );
  }
}
