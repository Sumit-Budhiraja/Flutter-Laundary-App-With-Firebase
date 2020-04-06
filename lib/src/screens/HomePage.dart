import 'package:flutter/material.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/buttons.dart';
import 'package:page_transition/page_transition.dart';
import './SignUpPage.dart';
import './SignInPage.dart';

class HomePage extends StatefulWidget {
  final String pageTitle;

  HomePage({Key key, this.pageTitle}) : super(key: key);
  static const String id = 'home_screen';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/welcome.png', width: 200, height: 200),
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 0),
            child: Text('Welcome.!', style: logoStyle),
          ),
          Container(
            width: 320,
            height: 60,
            margin: EdgeInsets.only(bottom: 0),
            child: froyoFlatBtn('Sign In', () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: Duration(seconds: 0),
                      child: SignInPage()));
            }),
          ),
          SizedBox(
            height: 20,
            width: 10,
          ),
          Container(
            width: 320,
            height: 60,
            padding: EdgeInsets.all(0),
            child: froyoOutlineBtn('Sign Up', () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      duration: Duration(seconds: 0),
                      child: SignUpPage()));
              // Navigator.of(context).pushReplacementNamed('/signup');
            }),
          ),
          Container(
            margin: EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Langauage:', style: TextStyle(color: darkText)),
                Container(
                  margin: EdgeInsets.only(left: 6),
                  child: Text('English ›',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500)),
                )
              ],
            ),
          )
        ],
      )),
      backgroundColor: bgColor,
    );
  }
}
