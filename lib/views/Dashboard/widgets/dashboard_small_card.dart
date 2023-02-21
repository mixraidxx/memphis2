import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/constants/style.dart';

class DashboardCardSmallScreen extends StatelessWidget {
  const DashboardCardSmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: light,
          elevation: 0,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(24),
            child: Text("dfgdfg"),
          ),
        ),
        ListTile(
          title: Text("dfgfdgdf"),
        )
      ],
    );
  }
}
