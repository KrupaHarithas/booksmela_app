//import 'package:bookstore_app/pages/SignUP.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'pages/SignUP.dart';

class LoginScreen extends StatefulWidget {
  static String tag ='login_page';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    final logo =Hero(
      tag: "hero",
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius:150.0,
        child: Image.asset('assets/book.jpg'),
      )
    );
    final email = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
//    initialValue:'null',
    decoration: InputDecoration(
    hintText: 'Email',
    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
    );
    final password = TextFormField(
    keyboardType: TextInputType.emailAddress,
    autofocus: false,
//    initialValue:'null',
    decoration: InputDecoration(
    hintText: 'password',
    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
    ),
    );

    final loginButton = Padding(
    padding: EdgeInsets.symmetric(vertical:16.0),
    child: RaisedButton(
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
    ),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    },
      padding: EdgeInsets.all(12),
      color: Colors.lightBlue,
      child: Text('Log IN '),
      ),
    );
    final forgotLabel =FlatButton(
      child:  Text('Dont have an account? SignUP', style: TextStyle(color: Colors.purple,fontSize: 15),),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
      },

    );
    return Scaffold(
      body:Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left:  24.0,right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 50.0,),
            email,
            SizedBox(height: 15.0),
            password,
            SizedBox( height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
  }

}
