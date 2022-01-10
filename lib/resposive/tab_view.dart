import 'package:flutter/material.dart';

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Text(
          'tablet View',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
