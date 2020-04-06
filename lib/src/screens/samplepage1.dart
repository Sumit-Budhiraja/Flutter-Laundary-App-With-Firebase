import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SamplePage1 extends StatefulWidget {
  final String pageTitle;

  SamplePage1({Key key, this.pageTitle}) : super(key: key);

  @override
  _SamplePage1State createState() => _SamplePage1State();
}

class _SamplePage1State extends State<SamplePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
            child: QrImage(
          data: 'Quantity : 3'
              'Prepaid order'
              'Weight 30 kg',
          version: QrVersions.auto,
          size: 380,
          gapless: false,
          embeddedImage: AssetImage('images/welcome.png'),
          embeddedImageStyle: QrEmbeddedImageStyle(
            size: Size(80, 80),
          ),
        )),
      ),
    );
  }
}
