import 'package:flutter/material.dart';

import 'inside_page.dart';
import 'login_page.dart';
import 'registration_page.dart';
import 'start_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: '/inside',


      routes:{
        '/':(context)=>StartPage(),
        '/login':(context)=>LoginPage(),
        '/registration':(context)=>RegPage(),
        '/inside':(context)=>InsidePage(),
      },
    );
  }
}
