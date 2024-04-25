import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soccerapp/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}
