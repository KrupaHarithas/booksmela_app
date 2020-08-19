
import 'package:bookstore_app/Login_screen.dart';
import 'package:bookstore_app/pages/myorders.dart';
import 'package:bookstore_app/pages/myprofile.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.red,
            child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 100,
                      margin: EdgeInsets.only(top: 30,bottom: 10,),
                      decoration: BoxDecoration(color: Colors.white,
                        shape: BoxShape.circle,
//
                        image: DecorationImage(image: NetworkImage('https://www.wallpaperup.com/uploads/wallpapers/2014/03/25/309750/01e82dcedecd64c2152d00ab14dceeb3-1000.jpg'),
                            fit: BoxFit.fill
                        ),

                      ),
                    ),
                    Text('Krupa Harithas',style: TextStyle(fontSize: 22, color: Colors.white),),
                    Text('krupashantha@gmail.com',style: TextStyle(color: Colors.white),),
                  ],
                )
            ),
          ),
          ListTile(leading: Icon(Icons.home,color: Colors.red,),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
           title: Text('Home Page',style: TextStyle(fontSize: 18),),
           ),
          ListTile(leading: Icon(Icons.person,color: Colors.red,),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));},
           title: Text('My Profile',style: TextStyle(fontSize: 18),),
           ),
          ListTile(leading: Icon(Icons.business_center,color: Colors.red,),
            title: Text('My Orders',style: TextStyle(fontSize: 18),),
            onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders()));},),
//          ListTile(leading: Icon(Icons.favorite,color: Colors.lightBlue,),title: Text('Favorites',style: TextStyle(fontSize: 18),), onTap: (){},),
          Divider(),
          ListTile(leading: Icon(Icons.settings),title: Text('Settings',style: TextStyle(fontSize: 18),), onTap: (){},),
          ListTile(leading: Icon(Icons.help),title: Text('About',style: TextStyle(fontSize: 18),), onTap: (){},),
          ListTile(leading: Icon(Icons.arrow_back),title: Text('Logout',style: TextStyle(fontSize: 18),), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));},),

        ],
      ),
    );
  }
}