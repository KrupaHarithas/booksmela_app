import 'package:flutter/material.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text('MyOrders'),centerTitle: true,),
       body:
       Card(child: ListTile(
           title: Text('No Active Orders',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
           subtitle: Text('There are no recent orders to show'),
       ),
       ),

     );
  }
}
