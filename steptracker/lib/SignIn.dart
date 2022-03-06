
import "package:flutter/material.dart";

import 'InputUserData.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String _login = "";
  String _pass = "";
  String _newLogin = "";
  String _newPass = "";

  Widget loginView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            onChanged: (newText) {
              setState(() {
                _login = newText;
              });
            },
            decoration: InputDecoration(
              labelText: "Login",
              border: UnderlineInputBorder()
            ),
          ),
          TextFormField(
            autofocus: true,
            onChanged: (newText) {
              setState() {
                _pass = newText;
              }
            },
            decoration: InputDecoration(
              labelText: "Password",
              border: UnderlineInputBorder()
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 215),
            child: ElevatedButton(
              onPressed: (){
                //TODO
                Navigator.push(context, 
                MaterialPageRoute(builder: 
                (context) => InputUserData()));
              }, 
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text("Log In"),
              )
            ),
          )
        ],
      ),
    );
  }

  Widget signUpView() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            onChanged: (newText) {
              setState(() {
                _newLogin = newText;
              });
            },
            decoration: InputDecoration(
              labelText: "Sign Up",
              border: UnderlineInputBorder()
            ),
          ),
          TextFormField(
            autofocus: true,
            onChanged: (newText) {
              setState() {
                _newPass = newText;
              }
            },
            decoration: InputDecoration(
              labelText: "Password",
              border: UnderlineInputBorder()
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 205),
              child: ElevatedButton(
              onPressed: (){
                //TODO
              }, 
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Text("Sign Up"),
              )
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: "Log in"),
              Tab(text: "Sign up"),
            ],
          ),
          title: Text("Grocery Lists App"),
        ),
        body: TabBarView(
          children: [loginView(), signUpView()],
        ),
      ),
    );
  }
}

