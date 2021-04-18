import 'package:flutter/material.dart';
import 'package:flutter_app/screen/home_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
      ProviderScope(
          child: MyApp()
      )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod StateNotifier',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

