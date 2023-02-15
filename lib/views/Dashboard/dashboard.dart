import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/helpers/responsiveness.dart';
import 'package:flutter_application_2/widgets/custom_text.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Container(
          child: const CustomText(
            text: "Dashboard",
            size: 24,
            fontWeight: FontWeight.bold,
          ),
        )
      ])
    ]);
  }
}
