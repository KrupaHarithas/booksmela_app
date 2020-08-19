import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    final logo =Hero(
        tag: "hero",
        child: Center(
         child: Container(
          width: 150,
          height: 200,
          margin: EdgeInsets.only(top: 30,bottom: 10,),
          decoration: BoxDecoration(color: Colors.white,
            shape: BoxShape.circle,
//
            image: DecorationImage(image: NetworkImage('https://www.wallpaperup.com/uploads/wallpapers/2014/03/25/309750/01e82dcedecd64c2152d00ab14dceeb3-1000.jpg'),
                fit: BoxFit.fill
            ),

          ),
        ),),
    );
    final firstname = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'First Name',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final lastname = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Last Name',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final gender = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Gender',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final dob = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Date of Birth',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final phno = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Phone Number',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Email Address',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0,20.0,10.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
      ),
    );
    final address = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'Residential Address',
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
        onPressed: () {},
        padding: EdgeInsets.all(12),
        color: Colors.red,
        child: Text('Save Details', style: TextStyle(fontSize: 22),),
      ),
    );

    return Scaffold(
        appBar: AppBar(title: Text('Edit Profile'),centerTitle: true,),
          body:Center(
           child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left:  10.0,right: 10.0),
            children: <Widget>[
            logo,
            SizedBox(height: 10.0,),
             firstname,
             SizedBox(height: 10.0,),
            lastname,
             SizedBox(height: 10.0,),
              gender,
              SizedBox(height: 10.0),
              dob,
              SizedBox( height: 10.0),
             phno,
            SizedBox(height: 10.0),
            email,
            SizedBox( height: 10.0),
            address,
            SizedBox(height: 5.0,),
              loginButton
          ],
        ),
      ),
    );
  }
}
