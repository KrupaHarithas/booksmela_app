//import 'package:flutter/material.dart';
////import 'package:bookstore_app/bottombar.dart';
//
//class ComicsDetail extends StatelessWidget {
//  final assetPath, bookprice, bookname;
//
//  ComicsDetail({this.assetPath, this.bookprice, this.bookname});
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        elevation: 0.0,
//        centerTitle: true,
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back, color: Colors.black38),
//          onPressed: () {Navigator.of(context).pop();},
//        ),
//        title: Text('Books Store', style: TextStyle(fontSize: 20.0, color: Colors.black38)),
//        actions: <Widget>[
//          IconButton(
//            icon: Icon(Icons.notifications_none, color: Colors.black38),
//            onPressed: () {},
//          ),
//        ],
//      ),
//
//      body: ListView(
//          children: [
//            SizedBox(height: 15.0),
//            Padding(
//              padding: EdgeInsets.only(left: 20.0),
//              child: Text(
//                  'Book',
//                  style: TextStyle(
//                      fontSize: 20.0,
//                      fontWeight: FontWeight.bold,
//                      color: Color(0xFFF17532))
//              ),
//            ),
//            SizedBox(height: 15.0),
//            Hero(
//                tag: assetPath,
//                child: Image.asset(assetPath,
//                    height: 300.0,
//                    width: 250.0,
//                    fit: BoxFit.contain
//                )
//            ),
//            SizedBox(height: 20.0),
//            Center(
//              child: Text(bookprice,
//                  style: TextStyle(
//                      fontSize: 22.0,
//                      fontWeight: FontWeight.bold,
//                      color: Color(0xFFF17532))),
//            ),
//            SizedBox(height: 10.0),
//            Center(
//              child: Text(bookname,
//                  style: TextStyle(
//                      color: Color(0xFF575E67),
//                      fontWeight: FontWeight.bold,
//                      fontSize: 24.0)),
//            ),
//            SizedBox(height: 20.0),
//            Center(
//              child: Container(
//                width: MediaQuery.of(context).size.width - 50.0,
//                child: Text(' Ravinder Singh again introduces us to Ravin, who is coping with the death of his girlfriend Khushi. He then shifts to Brussels where he meets Simar, a rich and pampered girl with whom he falls in love.',
//                    textAlign: TextAlign.center,
//                    style: TextStyle(
//                        fontSize: 16.0,
//                        color: Color(0xFFB4B8B9))
//                ),
//              ),
//            ),
//            SizedBox(height: 20.0),
//            Center(
//                child: Container(
//                    width: MediaQuery.of(context).size.width - 50.0,
//                    height: 40.0,
//                    decoration: BoxDecoration(
//                      borderRadius: BorderRadius.circular(25.0),
//                      color: Color(0xFFF17532),
//                    ),
//                    child: Center(
//                        child: Text('Add to cart',
//                          style: TextStyle(
//                              fontSize: 14.0,
//                              fontWeight: FontWeight.bold,
//                              color: Colors.white
//                          ),
//                        )
//                    )
//                )
//            )
//          ]
//      ),
//    );
//  }
//}



import 'package:flutter/material.dart';

import 'cart.dart';
//import 'package:bookstore_app/bottombar.dart';

class ComicsDetail extends StatelessWidget {
  final assetPath, bookprice, bookname;

  ComicsDetail({this.assetPath, this.bookprice, this.bookname});
  @override
  Widget build(BuildContext context) {
    final txt = Text(
        'Book',
        style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF17532))
    );
    final logo = Hero(
        tag: assetPath,
        child: Image.asset(assetPath,
            height: 300.0,
            width: 250.0,
            fit: BoxFit.contain
        )
    );
    final price = Center(child: Text(bookprice,
        style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF17532))));

    final name = Center(child: Text(bookname,
        style: TextStyle(
            color: Color(0xFF575E67),
            fontWeight: FontWeight.bold,
            fontSize: 24.0)));

    final addcart = Padding(
      padding: EdgeInsets.symmetric(vertical:16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));
        },
        padding: EdgeInsets.all(12),
        color: Colors.lightBlue,
        child: Text('Buy Now'),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black38),
          onPressed: () {Navigator.of(context).pop();},
        ),
        title: Text('Books Store', style: TextStyle(fontSize: 20.0, color: Colors.black38)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black38),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0,  right: 24.0),
          children: <Widget>[
            txt,
            SizedBox(height: 15.0),
            logo,
            SizedBox(height: 15.0),
            price,
            SizedBox(height: 15.0),
            name,
            SizedBox(height: 15.0),
            addcart

          ],
        ),
      ),
    );
  }
}