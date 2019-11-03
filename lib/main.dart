import 'package:app_turismo_tcc/src/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      title: "Turismo",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
