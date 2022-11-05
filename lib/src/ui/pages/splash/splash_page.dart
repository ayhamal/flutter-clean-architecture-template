import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';

import '../splash/splash_controller.dart';

final splashProvider = SimpleProvider(
    (_) => SplashController()
);

class SplashPage extends PageWithArgumentsWidget {
  const SplashPage({
    Key? key
  }) : super(key: key);

  @override
  void onInit(RouteSettings settings) {
    /// Here we can set controller arguments.
    /// 
    /// Example:
    /// 
    /// splashProvider.setArguments(Permission.locationWhenInUse);
  }

  @override
  Widget build(BuildContext context) {
    return ProviderListener<SplashController>(
      provider: splashProvider,
      onAfterFirstLayout: (context, controller) {
        controller.checkPermission();
      },
      onChange: (context, controller) {
        if (controller.routeName != null) {
          router.pushReplacementNamed(controller.routeName!);
        }
      },
      builder: (context, controller) {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              color: Colors.white,
              backgroundColor: Colors.grey,
            ),
          ),
        );
      },
    );
  }
}
