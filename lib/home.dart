import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template_sandbox/core/app_options.dart';
import 'package:template_sandbox/l10n/localizations_gen.dart';

/// This function cycles through the available languages and sets
/// [AppOptions.locale] to the next language.
// ignore: no_leading_underscores_for_local_identifiers
void _changeLanguage(BuildContext context) {
  final options = Provider.of<AppOptions>(context, listen: false);
  final currLocaleIndex = AppLocalizations.supportedLocales.indexWhere(
      (locale) => locale.languageCode == options.locale?.languageCode);
  final nextIndex =
      (currLocaleIndex + 1) % AppLocalizations.supportedLocales.length;
  options.locale = AppLocalizations.supportedLocales[nextIndex];
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.appTitle ?? ''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context)?.appDescription ??
                    'This is a template for a Flutter app with internationalization support.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              const SizedBox(height: 20),

              // Change theme button
              ElevatedButton(
                onPressed: () => Provider.of<AppOptions>(context, listen: false)
                    .switchThemeMode(),
                child: Text(AppLocalizations.of(context)?.changeTheme ??
                    'Change theme'),
              ),

              const SizedBox(height: 20),

              // Change theme button
              ElevatedButton(
                onPressed: () => _changeLanguage(context),
                child: Text(
                  AppLocalizations.of(context)?.changeLanguage ??
                      'Change language',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
