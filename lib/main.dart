import 'package:disney/app/disney.dart';
import 'package:disney/core/di/di.dart';
import 'package:flutter/material.dart';

void main() async {
  await initApp();
  runApp(const Disney());
}

initApp() async {
  setupGetIt();
}
