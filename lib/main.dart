import 'package:a4b001/resposive/responsuve_ui.dart';
import 'package:flutter/material.dart';
import 'todo_app/home_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'to do app',
      home: ResponsivePage(),
    );
  }
}
