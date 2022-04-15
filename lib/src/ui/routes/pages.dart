import 'package:flutter/cupertino.dart';

import 'routes.dart';
import '../pages/home/home_page.dart';
import '../pages/splash/splash_page.dart';
import '../pages/sample_feature/sample_item_details_view.dart';
import '../pages/sample_feature/sample_item_list_view.dart';
import '../pages/settings/settings_controller.dart';
import '../pages/settings/settings_view.dart';

class Pages {
  final SettingsController settingsController;

  Pages(this.settingsController);

  Map<String, Widget Function(BuildContext)> get appRoutes {
    return {
      Routes.SPLASH: (_) => const SplashPage(),
      Routes.HOME: (_) => const HomeView(),
      Routes.SETTINGS: (_) => SettingsView(controller: settingsController),
      Routes.SAMPLE_ITEM: (_) => const SampleItemDetailsView(),
      Routes.SAMPLE_ITEM_LIST: (_) => const SampleItemListView(),
    };
  }
}
