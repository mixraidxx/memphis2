import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants/style.dart';
import 'package:flutter_application_2/routing/routes.dart';
import 'package:flutter_application_2/views/Dashboard/dashboard.dart';
import 'package:get/get.dart';

class NavigationRailController extends GetxController {
  static NavigationRailController instance = Get.find();

  var tabIndex = 0;
  var title = "Dashboard".obs;

  final destinations = [
    const NavigationRailDestination(
        label: Text("Dashboard"), icon: Icon(Icons.dashboard)),
    const NavigationRailDestination(
        label: Text("Search"), icon: Icon(Icons.search)),
  ];

  final drawerDestinations = [
    const NavigationDrawerDestination(
        label: Text("Dashboard"), icon: Icon(Icons.dashboard)),
    const NavigationDrawerDestination(
        label: Text("Search"), icon: Icon(Icons.search)),
  ];

  final destinationsView = [
    const DashboardPage(),
    Container(
      child: Text("Search"),
    )
  ];

  final titles = [
    "Dashboard",
    "Search",
  ];

  void changeTabIndex(int index) {
    tabIndex = index;
    title.value = titles[index];
    update();
  }
}
