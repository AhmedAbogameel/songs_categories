import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:songs_categories/constants.dart';
import 'package:songs_categories/views/home/view.dart';

void main() {
  runApp(
    DevicePreview(enabled: false,builder: (_)=>MyApp())
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Songify',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        platform: TargetPlatform.iOS
      ),
      home: HomeView(),
    );
  }
}