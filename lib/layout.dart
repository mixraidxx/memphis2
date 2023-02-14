import 'package:flutter/material.dart';
import 'package:flutter_application_2/helpers/responsiveness.dart';
import 'package:flutter_application_2/widgets/large_screen.dart';
import 'package:flutter_application_2/widgets/medium_screen.dart';
import 'package:flutter_application_2/widgets/small_screen.dart';
import 'package:flutter_application_2/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldState,
        drawer: const Drawer(),
        appBar: topNavigationbBar(context, scaffoldState),
        body: const ResponsiveWidget(
          largeScreen: LargeScreeen(),
          smallScreen: SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
