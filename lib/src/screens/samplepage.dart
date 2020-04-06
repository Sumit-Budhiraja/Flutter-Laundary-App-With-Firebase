import 'package:flutter/material.dart';

class SamplePage extends StatefulWidget {
  final String pageTitle;

  SamplePage({Key key, this.pageTitle}) : super(key: key);

  @override
  _SamplePageState createState() => _SamplePageState();
}

class _SamplePageState extends State<SamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Service at Laundary 2',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 32.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'You rated 4.0 as many users',
              style: TextStyle(
                fontFamily: 'SourceCodePro',
                color: Colors.red,
                fontSize: 15.0,
                letterSpacing: 1,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  '+91 8427584898',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SourceCodePro',
                    fontSize: 20.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'Book Again',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SourceCodePro',
                    fontSize: 20.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
              width: 170.0,
              child: Divider(
                color: Colors.redAccent,
              ),
            ),
            Text(
              'Service at Laundary 7',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 35.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'You rated 3.0 for this service',
              style: TextStyle(
                fontFamily: 'SourceCodePro',
                color: Colors.red,
                fontSize: 20.0,
                letterSpacing: 1.5,
              ),
            ),
            Text(
              'Delivery was bit late.!',
              style: TextStyle(
                fontFamily: 'SourceCodePro',
                color: Colors.indigo,
                fontSize: 15.0,
                letterSpacing: 1.5,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.black,
                ),
                title: Text(
                  '+91 8427786858',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SourceCodePro',
                    fontSize: 20.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  'Book Again',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'SourceCodePro',
                    fontSize: 20.0,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
