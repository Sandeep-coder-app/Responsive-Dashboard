import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({Key? key, required this.mobileBody, required this.tableBody, required this.desktopBody}) : super(key: key);

  final Widget mobileBody;
  final Widget tableBody;
  final Widget desktopBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if(constraints.maxWidth < 500) {
          return mobileBody;
        } else if(constraints.maxWidth < 1100) {
          return tableBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
