import 'package:flutter/material.dart';

import 'editpage.dart';
//import 'maindrawer.dart';


class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.edit), onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => EditPage())); },)
        ],
      ),

       body: Container(
         child: Center(
             child: Column(
               verticalDirection: VerticalDirection.down,
               children: <Widget>[
                 Container(
                   width: 200,
                   height: 200,
                   margin: EdgeInsets.only(top: 30,bottom: 10,),
                   decoration: BoxDecoration(color: Colors.white,
                     shape: BoxShape.circle,
//
                     image: DecorationImage(image: NetworkImage('https://www.wallpaperup.com/uploads/wallpapers/2014/03/25/309750/01e82dcedecd64c2152d00ab14dceeb3-1000.jpg'),
                         fit: BoxFit.fill
                     ),

                   ),
                 ),
                 SizedBox(height: 5.0),
                 Text('Krupa Harithas',style: TextStyle(fontSize: 22, color: Colors.black),),
                 Text('krupashantha@gmail.com',style: TextStyle(color: Colors.black),),
                 SizedBox(height: 10.0),
                 ListTile(leading: Icon(Icons.person),title: Text('Female',style: TextStyle(fontSize: 18),), onTap: (){},),
                 ListTile(leading: Icon(Icons.cake),title: Text('29/12/1999',style: TextStyle(fontSize: 18),), onTap: (){},),
                 ListTile(leading: Icon(Icons.phone),title: Text('9482023218',style: TextStyle(fontSize: 18),), onTap: (){},),
                 ListTile(leading: Icon(Icons.home),title: Text('#1367, 1st floor, 1st cross, 4/1 cross, E&F block, Ramakrishna nagar, mysore',style: TextStyle(fontSize: 18),), onTap: (){},),

               ],
           ),
         ),
       ),
    );
  }
}

