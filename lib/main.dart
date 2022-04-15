import 'package:flutter/material.dart';
import 'package:flutter_template/app.dart';

import 'src/inject_dependencies.dart';
import 'src/ui/pages/settings/settings_controller.dart';
import 'src/ui/pages/settings/settings_service.dart';

void main() async {
  // Inject dependencies on project
  injectDependencies();

  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runApp(App(settingsController: settingsController));
}
