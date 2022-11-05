import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_meedu/ui.dart';

import 'env.dart';
import 'src/ui/routes/pages.dart';
import 'src/ui/routes/routes.dart';
import 'src/ui/pages/settings/settings_controller.dart';

class App extends StatelessWidget {
  final SettingsController settingsController;

  const App({
    Key? key, 
    required this.settingsController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Generate App Pages Class.
    final pages = Pages(settingsController);

    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: Env.restorationScopeId,

          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) => AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: ThemeData(),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,

          // Hide the debug banner.
          debugShowCheckedModeBanner: false,

          // Set the initial route as Splash Screen.
          initialRoute: Routes.SPLASH,

          // Define the navigator key.
          navigatorKey: router.navigatorKey,

          // Add navigator observers to keep track of the current route.
          navigatorObservers: [
            router.observer
          ],

          // Define the routes.
          routes: pages.appRoutes,
        );
      },
    );
  }
}
