import 'package:flutter/material.dart';
//-------------------------------------

/// sailor is a navigation service that controls routes easily
/// and without the need of passing contexts.

abstract class ISailor {
  late final GlobalKey<NavigatorState> navigatorKey;
}

class Sailor implements ISailor {
  /// global key which controls navigation state.
  @override
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

extension NavigationMethods on Sailor {
  /// use [to] instead of [Navigator.push].
  Future<dynamic> to(Widget newScreen) {
    return navigatorKey.currentState!.push(
      MaterialPageRoute(builder: (_) => newScreen),
    );
  }

  /// use [toNamed] instead of Navigator.pushNamed method.
  Future<dynamic> toNamed(String routeName, {dynamic args}) {
    return navigatorKey.currentState!.pushNamed(routeName, arguments: args);
  }

  /// use [startOverFrom] instead of [Navigator.pushAndRemoveUntil()].
  Future<dynamic> startOverFrom(Widget newScreen) {
    return navigatorKey.currentState!.pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => newScreen),
      (_) => false,
    );
  }

  /// use [startOverFromNamed] instead of Navigator.pushNamedAndRemoveUntil method.
  Future<dynamic> startOverFromNamed(String routeName) {
    return navigatorKey.currentState!.pushNamedAndRemoveUntil(
      routeName,
      (_) => false,
    );
  }

  /// use [replace] instead of Navigator.pushReplacementNamed method.
  Future<dynamic> replace(Widget screen) {
    return navigatorKey.currentState!.pushReplacement(
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  /// use [replaceNamed] instead of Navigator.pushReplacementNamed method.
  Future<dynamic> replaceNamed(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }

  /// use [back] instead of [Navigator.pop].
  void back([dynamic result]) {
    navigatorKey.currentState!.pop(result);
  }
}
