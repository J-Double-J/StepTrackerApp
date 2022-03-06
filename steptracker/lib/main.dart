import 'package:flutter/material.dart';
import 'SignIn.dart';
import "package:firebase_core/firebase_core.dart";
import "package:cloud_firestore/cloud_firestore.dart";

void main() /*async*/ {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  // firestore
  //     .collection("test-list")
  //     .get()
  //     .then((QuerySnapshot snapshot) {
  //     snapshot.docs.forEach((doc) {
  //     print(doc["testName"]);
  //   });
  // });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        accentColor: Colors.purple.shade100,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}