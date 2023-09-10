import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  CollectionReference collectionReference =
      FirebaseFirestore.instance.collection("usuarios");

  @override
  Widget build(BuildContext context) {
    collectionReference.get().then((value) {
      print(value.docs.length);
    });
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(),
    );
  }
}
