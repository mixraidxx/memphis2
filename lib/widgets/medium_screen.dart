import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/controller/menu_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MediumScreen extends StatelessWidget {
  const MediumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationRailController>(builder: (controller) {
      return Row(
        children: [
          NavigationRail(
            extended: false,
            destinations: controller.destinations,
            selectedIndex: controller.tabIndex,
            onDestinationSelected: controller.changeTabIndex,
          ),
          Expanded(
            child: IndexedStack(
                index: controller.tabIndex,
                children: controller.destinationsView),
          ),
        ],
      );
    });
  }
}
