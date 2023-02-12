import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/Components/NavigationTransition/NavigationTransition.dart';
import 'package:flutter_application_2/views/Home/HomeView.dart';

import 'Merchant/MerchantView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  int screenIndex = 0;

  final List<Widget> _pages = [const HomeView(), const MerchantView()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Memphis"),
      ),
      body: Row(
        children: [
          NavigationRail(
            onDestinationSelected: (index) {
              setState(() {
                screenIndex = index;
              });
            },
            extended: true,
            destinations: const [
              NavigationRailDestination(
                  icon: Icon(Icons.widgets_outlined),
                  label: Text("Dashboard"),
                  selectedIcon: Icon(Icons.widgets)),
              NavigationRailDestination(
                  icon: Icon(Icons.widgets_outlined),
                  label: Text("Comercios"),
                  selectedIcon: Icon(Icons.widgets))
            ],
            selectedIndex: screenIndex,
          ),
          _pages[screenIndex]
        ],
      ),
    );
  }
}
