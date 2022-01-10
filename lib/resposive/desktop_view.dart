import 'package:flutter/material.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Text(
          'Desktop View',
          style: TextStyle(),
        ),
      ),
    );
  }
}
