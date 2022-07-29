import 'package:get/get.dart';
import 'package:transformer_bin/modules/Burger_Manu/controllers/Burger_manu_controller.dart';

import '../controllers/Dashboard_screen_controller.dart';


class Deshboard_screen_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Deshboard_screen_Controller>(
      () => Deshboard_screen_Controller(),
    );
  }
}
