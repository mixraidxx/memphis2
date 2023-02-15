import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/menu_controller.dart';

class LargeScreeen extends StatelessWidget {
  const LargeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationRailController>(builder: (controller) {
      return Row(
        children: [
          NavigationRail(
            extended: true,
            destinations: controller.destinations,
            selectedIndex: controller.tabIndex,
            onDestinationSelected: controller.changeTabIndex,
          ),
          Expanded(
              flex: 5,
              child: IndexedStack(
                index: controller.tabIndex,
                children: controller.destinationsView,
              ))
        ],
      );
    });
  }
}
