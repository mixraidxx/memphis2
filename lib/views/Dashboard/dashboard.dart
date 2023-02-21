import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/constants/style.dart';
import 'package:flutter_application_2/helpers/responsiveness.dart';
import 'package:flutter_application_2/views/Dashboard/widgets/dashboard_large_card.dart';
import 'package:flutter_application_2/views/Dashboard/widgets/dashboard_small_card.dart';
import 'package:flutter_application_2/views/Dashboard/widgets/info_card.dart';
import 'package:flutter_application_2/widgets/custom_text.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if (ResponsiveWidget.isLargeScreen(context) ||
            ResponsiveWidget.isMediumScreen(context)) ...{
          DashBoardCardLargeScreen()
        },
        if (ResponsiveWidget.isSmallScreen(context)) ...{
          DashboardCardSmallScreen()
        }
      ],
    );
  }
}
