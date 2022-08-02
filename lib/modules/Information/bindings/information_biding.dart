import 'package:get/get.dart';

import '../Controller/information_controller.dart';

class Information_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Information_controler>(
          () => Information_controler(),
    );
  }
}