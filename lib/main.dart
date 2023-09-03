import 'package:flutter/material.dart';

import 'package:my_size/responive/desctop_body.dart';
import 'package:my_size/responive/macOs_body.dart';
import 'package:my_size/responive/mobile_body.dart';
import 'package:my_size/responive/responsive_layout.dart';
import 'package:my_size/responive/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ResponsiveLoyaud(
          mobileBody: MobileBody(),
          desctopBody: DesctopBody(),
          tabledBody: Tabled_Body(),
          macosBody: MacOSBody(),
        ));
  }
}
