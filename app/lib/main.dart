import 'dart:async';

import 'package:flutter/material.dart';
import 'package:initializer/initializer.dart';
import 'package:shared/shared.dart';

import 'app/my_app.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO package:initializer
  // await AppInitializer(AppConfig.getInstance()).init();
  runApp(const MyApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  // TODO package:shared
  // Log.e(error, stackTrace: stackTrace, name: 'Uncaught exception');
  // report by Firebase Crashlytics here
}
