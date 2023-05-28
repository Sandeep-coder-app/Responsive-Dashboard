import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsivedashboard/responsive/desktop_body.dart';
import 'package:responsivedashboard/responsive/mobile_body.dart';
import 'package:responsivedashboard/responsive/responsive_layout.dart';
import 'package:responsivedashboard/responsive/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ResponsiveLayout(
        mobileBody: MobileScaffold(),
        tableBody: TabletScaffold(),
        desktopBody: DesktopScaffold(),
      ),
    );
  }
}