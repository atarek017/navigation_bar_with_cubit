import 'package:flutter/material.dart';
import 'package:navigation_bar_with_cubit/ui/screens/home.dart';
import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.light();

    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Home(),
    );
  }
}
