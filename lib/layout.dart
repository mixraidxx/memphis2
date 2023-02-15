import 'package:flutter/material.dart';
import 'package:flutter_application_2/helpers/responsiveness.dart';
import 'package:flutter_application_2/widgets/controller/menu_controller.dart';
import 'package:flutter_application_2/widgets/large_screen.dart';
import 'package:flutter_application_2/widgets/medium_screen.dart';
import 'package:flutter_application_2/widgets/small_screen.dart';
import 'package:flutter_application_2/widgets/top_nav.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  SiteLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldState,
        drawer: GetBuilder<NavigationRailController>(
          builder: (controller) {
            return NavigationDrawer(
              onDestinationSelected: controller.changeTabIndex,
              selectedIndex: controller.tabIndex,
              children: [
                const SizedBox(
                  height: 40,
                ),
                ...controller.drawerDestinations
              ],
            );
          },
        ),
        appBar: topNavigationbBar(context, scaffoldState),
        body: const ResponsiveWidget(
          largeScreen: LargeScreeen(),
          smallScreen: SmallScreen(),
          mediumScreen: MediumScreen(),
        ));
  }
}
