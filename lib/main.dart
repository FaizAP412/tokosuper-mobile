import 'package:flutter/material.dart';
import 'package:tokosuper/screens/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
          ).copyWith(secondary: Colors.deepPurple[400]),      ),
      home: MyHomePage(),
    );
  }
}
