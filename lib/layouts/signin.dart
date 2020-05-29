import 'package:flutter/material.dart';
import 'package:imgotsilafood/utility/my_style.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: <Color>[Colors.yellow.shade100, Colors.yellow],center: Alignment(0, -0.3),
          radius: 0.8,
        )),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MyStyle().showLogo(),
                MyStyle().mySizeBox(),
                MyStyle().showTitle('ImGotsila Food'),
                MyStyle().mySizeBox(),
                userForm(),
                MyStyle().mySizeBox(),
                passWordForm(),
                MyStyle().mySizeBox(),
                loginButton()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() => Container(
      width: 250.0,
      height: 45.0,
      child: RaisedButton(
        color: MyStyle().darkColor,
        onPressed: () {},
        child: Text('Login'),
      ));

  Widget userForm() => Container(
        width: 250.0,
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().pimaryColor),
            labelText: 'User : ',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().pimaryColor)),
          ),
        ),
      );

  Widget passWordForm() => Container(
        width: 250.0,
        child: TextField(obscureText: true,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().pimaryColor),
            labelText: 'Password : ',
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().pimaryColor)),
          ),
        ),
      );
}
