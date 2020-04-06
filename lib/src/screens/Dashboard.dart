import 'package:flutter/material.dart';
import 'package:fryo/src/screens/samplepage3.dart';
//import 'package:fryo/src/screens/HomePage.dart';
//import 'package:fryo/src/screens/HomePage.dart';
import '../shared/styles.dart';
import '../shared/colors.dart';
import '../shared/fryo_icons.dart';
import './ProductPage.dart';
import '../shared/Product.dart';
import '../shared/partials.dart';
//import './SignInPage.dart';
import './samplepage.dart';
import './samplepage1.dart';
import './samplepage4.dart';

class Dashboard extends StatefulWidget {
  final String pageTitle;

  Dashboard({Key key, this.pageTitle}) : super(key: key);

  static const String id = 'dash_screen';
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _tabs = [
      storeTab(context),
      //SamplePage1(),
      SamplePage4(),
      SamplePage3(),
      SamplePage1(),
      SamplePage(),
    ];

    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          centerTitle: true,
          elevation: 20,
          leading: IconButton(
            onPressed: () {},
            iconSize: 21,
            icon: Icon(Fryo.funnel),
          ),
          backgroundColor: primaryColor,
          title: Text('Cleanly',
              style: logoWhiteStyle, textAlign: TextAlign.center),
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              icon: Icon(Fryo.magnifier),
            ),
            IconButton(
              padding: EdgeInsets.all(0),
              onPressed: () {},
              iconSize: 21,
              icon: Icon(Fryo.alarm),
            )
          ],
        ),
        body: Center(
          child: _tabs.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Fryo.shop),
                title: Text(
                  'HOME',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Fryo.cart),
                title: Text(
                  'Order',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Fryo.screen),
                title: Text(
                  'Chat',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Fryo.code),
                title: Text(
                  'Show Qr',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Icon(Fryo.cog_1),
                title: Text(
                  'History',
                  style: tabLinkStyle,
                ))
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.redAccent,
          onTap: _onItemTapped,
        ));
  }
}

Widget storeTab(BuildContext context) {
  // will pick it up from here
  // am to start another template
  List<Product> foods = [
    Product(
        name: "LAUNDARY 1",
        image: "images/12.png",
        price: "\Rs240.00",
        userLiked: true,
        discount: 25),
    Product(
        name: "LAUNDARY 2",
        image: "images/12.png",
        price: "\Rs150.00",
        userLiked: false,
        discount: 7.8),
    Product(
      name: "LAUNDARY 3",
      image: 'images/3.png',
      price: '\Rs 890.00',
      userLiked: false,
    ),
    Product(
        name: "LAUNDARY 4",
        image: "images/5.png",
        price: '\RS340.00',
        userLiked: true,
        discount: 14)
  ];

  List<Product> drinks = [
    Product(
        name: "T-shirts",
        image: "images/6.png",
        price: "\Rs45.50",
        userLiked: true,
        discount: 4),
    Product(
        name: "Blazers",
        image: "images/7.png",
        price: "\Rs37.00",
        userLiked: false,
        discount: 5.2),
    Product(
        name: "Lehangas",
        image: "images/8.png",
        price: "Rs178",
        userLiked: true),
    Product(
        name: "Sweat Shirts",
        image: "images/9.png",
        price: "Rs 168",
        userLiked: true,
        discount: 3.4),
  ];
  return ListView(children: <Widget>[
    headerTopCategories(),
    deals('Available Laundries', onViewMore: () {}, items: <Widget>[
      foodItem(foods[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[0],
              );
            },
          ),
        );
      }, onLike: () {}),
      foodItem(foods[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[1],
              );
            },
          ),
        );
      }, imgWidth: 250, onLike: () {}),
      foodItem(foods[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[2],
              );
            },
          ),
        );
      }, imgWidth: 200, onLike: () {}),
      foodItem(foods[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: foods[3],
              );
            },
          ),
        );
      }, onLike: () {}),
    ]),
    deals('Particular Items', onViewMore: () {}, items: <Widget>[
      foodItem(drinks[0], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[0],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 60),
      foodItem(drinks[1], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[1],
              );
            },
          ),
        );
      }, onLike: () {}, imgWidth: 75),
      foodItem(drinks[2], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[2],
              );
            },
          ),
        );
      }, imgWidth: 110, onLike: () {}),
      foodItem(drinks[3], onTapped: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return new ProductPage(
                productData: drinks[3],
              );
            },
          ),
        );
      }, onLike: () {}),
    ])
  ]);
}

Widget sectionHeader(String headerTitle, {onViewMore}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        margin: EdgeInsets.only(left: 15, top: 10),
        child: Text(headerTitle, style: h4),
      ),
      Container(
        margin: EdgeInsets.only(left: 15, top: 2),
        child: FlatButton(
          onPressed: onViewMore,
          child: Text('View all ›', style: contrastText),
        ),
      )
    ],
  );
}

// wrap the horizontal listview inside a sizedBox..
Widget headerTopCategories() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      sectionHeader('Services', onViewMore: () {}),
      SizedBox(
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            headerCategoryItem('Washing', Fryo.lightbulb, onPressed: () {}),
            headerCategoryItem('Dry Cleaning', Fryo.star, onPressed: () {}),
            headerCategoryItem('Intermediate', Fryo.mustache, onPressed: () {}),
            headerCategoryItem('Query', Fryo.coffee_cup, onPressed: () {}),
            headerCategoryItem('Complaint', Fryo.cross, onPressed: () {}),
          ],
        ),
      )
    ],
  );
}

Widget headerCategoryItem(String name, IconData icon, {onPressed}) {
  return Container(
    margin: EdgeInsets.only(left: 15),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 86,
            height: 86,
            child: FloatingActionButton(
              shape: CircleBorder(),
              heroTag: name,
              onPressed: onPressed,
              backgroundColor: white,
              child: Icon(icon, size: 35, color: Colors.black87),
            )),
        Text(name + ' ›', style: categoryText)
      ],
    ),
  );
}

Widget deals(String dealTitle, {onViewMore, List<Widget> items}) {
  return Container(
    margin: EdgeInsets.only(top: 5),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        sectionHeader(dealTitle, onViewMore: onViewMore),
        SizedBox(
          height: 250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: (items != null)
                ? items
                : <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text('No items available at this moment.',
                          style: taglineText),
                    )
                  ],
          ),
        )
      ],
    ),
  );
}
