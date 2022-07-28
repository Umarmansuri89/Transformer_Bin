import 'package:get/get.dart';
import 'package:transformer_bin/modules/Burger_Manu/controllers/Burger_manu_controller.dart';


class Burger_manu_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Burger_manu_Controller>(
      () => Burger_manu_Controller(),
    );
  }
}
