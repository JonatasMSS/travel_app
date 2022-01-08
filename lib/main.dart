import 'package:flutter/material.dart';
import 'src/HomePage.dart';
import 'package:flutter/services.dart';
import 'src/DescPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => HomePage(),
        '/desc': (context) => DescPage(),
      },
      initialRoute: '/home',
      home: HomePage(),
    );
  }
}
