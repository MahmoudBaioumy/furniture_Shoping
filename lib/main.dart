import 'package:flutter/material.dart';
import 'package:flutter_application_1/befor_login.dart';
import 'package:flutter_application_1/features/Home/add_cart.dart';
import 'package:flutter_application_1/features/Home/buttom_nav.dart';
import 'package:flutter_application_1/features/Home/fav.dart';
import 'package:flutter_application_1/features/profile/new_create.dart';
import 'package:flutter_application_1/features/profile/new_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: init_login(),
    );
  }
}
