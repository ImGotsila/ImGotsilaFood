import 'package:flutter/material.dart';
import 'package:imgotsilafood/layouts/home.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ImGotsila Food',
      home: Home(),
    );
  }
}