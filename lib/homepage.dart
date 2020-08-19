import 'package:flutter/material.dart';
import 'maindrawer.dart';
import 'pages/books.dart';
import 'pages/comics.dart';
import 'pages/history.dart';
import 'pages/literature.dart';
import 'pages/management.dart';
import 'pages/novels.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}
class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("BooksStore");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              setState(() {
                if(this.cusIcon.icon == Icons.search){
                  this.cusIcon = Icon(Icons.close);
                  this.cusSearchBar = TextField(
                    textInputAction: TextInputAction.go,
                    style: TextStyle(color: Colors.white, fontSize: 16.0,),
                    decoration: new InputDecoration(hintText: "Search...",),
                  );
                }
                else {
                  this.cusIcon = Icon(Icons.search);
                  this.cusSearchBar = Text("BookStore");
                }
              });
            },
          ),
          IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,),onPressed: (){},),
        ],
        centerTitle: true,
        title: cusSearchBar,
      ),

      drawer: MainDrawer(),

      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 5.0),
          Text('Categories', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 5.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.deepOrangeAccent,
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(child: Text('Home', style: TextStyle(fontSize: 21.0,)),),
                Tab(child: Text('Novel', style: TextStyle(fontSize: 21.0,)),),
                Tab(child: Text('Comics', style: TextStyle(fontSize: 21.0,)),),
                Tab(child: Text('Literature', style: TextStyle(fontSize: 21.0,)),),
                Tab(child: Text('History', style: TextStyle(fontSize: 21.0,)),),
                Tab(child: Text('Management', style: TextStyle(fontSize: 21.0,)),),
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 60.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    BooksPage(),
                    NovelsPage(),
                    ComicsPage(),
                    LiteraturePage(),
                    HistoryPage(),
                    ManagementPage(),
                  ]
              )
          )
        ],
      ),
    );
  }
}
