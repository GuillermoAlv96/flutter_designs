import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/screens/home_screen.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_screen': (context) => BasicScreenDesign(),
        'scroll_design': (context) => ScrollScreen(),
        'home_screen': (context) => HomeScreen()
      },
    );
  }
}
