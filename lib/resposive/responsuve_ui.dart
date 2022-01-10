import 'package:a4b001/resposive/desktop_view.dart';
import 'package:a4b001/resposive/mobile_view.dart';
import 'package:a4b001/resposive/tab_view.dart';
import 'package:flutter/material.dart';

class ResponsivePage extends StatefulWidget {
  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  //const ResponsivePage({Key? key}) : super(key: key);
  int num = 0;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(floatingActionButton: FloatingActionButton(
      onPressed: () {
        num++;
        setState(() {});
      },
    ), body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 768) {
          return MobileView();
        } else if (constraints.maxWidth < 1280) {
          return TabView();
        } else {
          return DesktopView();
        }
      },
    ));
  }
}
