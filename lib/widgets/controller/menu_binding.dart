import 'package:flutter_application_2/widgets/controller/menu_controller.dart';
import 'package:get/get.dart';

class NavigationRaiBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavigationRailController>(NavigationRailController(),
        permanent: true);
  }
}
