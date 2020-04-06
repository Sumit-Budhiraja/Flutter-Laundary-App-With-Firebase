import 'package:flutter/material.dart';
import 'package:fryo/src/screens/samplepage.dart';
import './src/screens/SignInPage.dart';
import './src/screens/SignUpPage.dart';
import './src/screens/HomePage.dart';
import './src/screens/Dashboard.dart';
import './src/screens/ProductPage.dart';
import './src/screens/samplepage1.dart';
import './src/screens/samplepage3.dart';
import './src/screens/samplepage4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cleanly',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(pageTitle: 'Welcome'),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignUpPage(),
        '/signin': (BuildContext context) => SignInPage(),
        Dashboard.id: (context) => Dashboard(),
        //WelcomeScreen.id:: (BuildContext context) => Dashboard(),
        '/productPage': (BuildContext context) => ProductPage(),
        '/sample': (BuildContext context) => SamplePage(),
        '/sample1': (BuildContext context) => SamplePage1(),
        '/sample3': (BuildContext context) => SamplePage3(),
        '/sample4': (BuildContext context) => SamplePage4(),
      },
    );
  }
}
