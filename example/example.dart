import 'package:flutter/material.dart';
import 'package:flutter_text_draggable/flutter_text_draggable.dart';

main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextDraggable',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TextOverImage(),
    );
  }
}
