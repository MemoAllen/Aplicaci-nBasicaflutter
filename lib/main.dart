import 'package:flutter/material.dart';
import 'package:mi_contador_gds0252/src/pages/contador_page.dart';

//Escrito por mi

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
