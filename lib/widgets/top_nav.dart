import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/controllers.dart';
import 'package:flutter_application_2/constants/style.dart';
import 'package:flutter_application_2/helpers/responsiveness.dart';
import 'package:flutter_application_2/widgets/custom_text.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

AppBar topNavigationbBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Container()
          : IconButton(
              onPressed: () {
                key.currentState?.openDrawer();
              },
              icon: const Icon(Icons.menu)),
      elevation: 0,
      title: Obx(() => Text(navigationRailController.title.value)),
      iconTheme: IconThemeData(color: dark),
      // backgroundColor: Colors.white,
    );
