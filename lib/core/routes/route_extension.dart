import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(
      this,
    ).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    Widget routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(this).pushNamedAndRemoveUntil(
      routeName.toString(),
      predicate,
      arguments: arguments,
    );
  }

  Future<dynamic> pushAndRemoveUntil(
    Widget routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) {
          return routeName;
        },
      ),
      (route) {
        return false;
      },
    );
  }

  void pop<T>([T? result]) => Navigator.of(this).pop<T>(result);
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == "";
}
