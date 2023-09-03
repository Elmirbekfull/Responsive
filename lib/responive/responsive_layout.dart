import 'package:flutter/material.dart';

class ResponsiveLoyaud extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabledBody;
  final Widget desctopBody;
  final Widget macosBody;
  const ResponsiveLoyaud(
      {super.key,
      required this.mobileBody,
      required this.desctopBody,
      required this.tabledBody,
      required this.macosBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 500) {
        return mobileBody;
      }
      if (constraints.maxWidth < 800) {
        return macosBody;
      } else if (constraints.maxWidth < 1200) {
        return tabledBody;
      } else {
        return desctopBody;
      }
    });
  }
}
