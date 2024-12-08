import 'screens/introduction_screen.dart';
import 'package:flutter/material.dart';
import 'utils/routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor App',
      routes : routes,
      initialRoute: IntroductionScreen.routeName,
    );
  }


}