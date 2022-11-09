import 'package:flutter/material.dart';

import 'presentation/pages/home_page.dart';
import 'utils/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterban',
      theme: AppTheme.lightTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
