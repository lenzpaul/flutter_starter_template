import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:template_sandbox/core/app_options.dart';
import 'package:template_sandbox/l10n/localizations_gen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)?.appTitle ?? ''),
      ),
      body: Center(
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
              child: Text(
                  AppLocalizations.of(context)?.changeTheme ?? 'Change theme'),
            ),
          ],
        ),
      ),
    );
  }
}
