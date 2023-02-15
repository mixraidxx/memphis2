import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/widgets/controller/menu_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationRailController>(builder: (controller) {
      return IndexedStack(
        index: controller.tabIndex,
        children: controller.destinationsView,
      );
    });
  }
}
