import 'package:flutter/material.dart';
import 'package:responsive_template/responsive/desktop_view.dart';
import 'package:responsive_template/responsive/moile_view.dart';
import 'package:responsive_template/responsive/responsive_layout.dart';
import 'package:responsive_template/responsive/tablet_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileView: MobileView(),
          tabletView: TabletView(),
          desktopView: DesktopView()),
    );
  }
}
