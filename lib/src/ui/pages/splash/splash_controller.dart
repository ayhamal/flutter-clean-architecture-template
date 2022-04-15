import 'package:flutter_meedu/meedu.dart';

import '../../routes/routes.dart';

class SplashController extends SimpleNotifier {
  String? _routeName;
  String? get routeName => _routeName;

  /// Add to constructor arguments to check if the user has granted permissions, or something else.
  /// If the user has granted permissions, then the routeName will be set to the route to navigate to.
  /// 
  /// Example using permission_handler.dart library:
  /// 
  /// final Permission _locationPermission; 
  /// SplashController(this._locationPermission);
  /// 
  /// Future<void> checkPermission() async {
  ///  final isGranted = await _locationPermission.isGranted;
  ///  _routeName = isGranted ? Routes.HOME : Routes.PERMISSIONS;
  ///  notify();
  ///}

  SplashController();

  /// Set the routeName to the route to navigate to.
  Future<void> checkPermission() async {
    _routeName = Routes.SAMPLE_ITEM_LIST;
    notify();
  }
}
