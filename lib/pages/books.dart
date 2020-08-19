import 'package:flutter/material.dart';
import 'books_details.dart';

class BooksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: <Widget>[
//          SizedBox(height: 10.0),
//          Upbar(),
          SizedBox(height: 5.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 40.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                scrollDirection: Axis.vertical,
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('Avatar', '\249', 'assets/avatar.jpg',
                      false, false, context),
                  _buildCard('Queene', '\340', 'assets/queene.jpg',
                      false, false, context),
                  _buildCard('The Arid Sky', '\180', 'assets/thearidsky.jpg',
                      false, false, context),
                  _buildCard('1984', '\199', 'assets/1984.jpg',
                      false, false, context),
                  _buildCard('Moby Dick', '\249', 'assets/mobydick.jpg',
                      false, false, context),
                  _buildCard('Too Big to Fail', '\199', 'assets/toobigtofail.jpg',
                      false, false, context),
                  _buildCard('Sub Zero', '\299', 'assets/subzero.jpg',
                      false, false, context),
                  _buildCard('Chandra', '\199', 'assets/chandra.jpg',
                      false, false, context)
                ],
              )),
          SizedBox(height: 10.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, bool added,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BooksDetail(
                      assetPath: imgPath,
                      bookprice:price,
                      bookname: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Color(0xFFEF7532))
                                : Icon(Icons.favorite_border,
                                color: Color(0xFFEF7532))
                          ])),
                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 100.0,
                          width: 150.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  SizedBox(height: 5.0),
                  Text(price,
                      style: TextStyle(
                          color: Color(0xFFCC8053),
                          fontSize: 14.0)),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontSize: 14.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.shopping_basket,
                                  color: Color(0xFFD17E50), size: 15.0),
                              Text('Add to cart',
                                  style: TextStyle(
                                      color: Color(0xFFD17E50),
                                      fontSize: 15.0))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.0),
                              Text('3',
                                  style: TextStyle(
                                      color: Color(0xFFD17E50),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0)),
                              Icon(Icons.add_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.0),
                            ]
                          ]))
                ]))));
  }
}