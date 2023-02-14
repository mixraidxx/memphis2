import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/style.dart';
import 'package:flutter_application_2/helpers/responsiveness.dart';
import 'package:flutter_application_2/widgets/custom_text.dart';

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
      //title: "Memphis",
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: dark),
      // backgroundColor: Colors.white,
    );
