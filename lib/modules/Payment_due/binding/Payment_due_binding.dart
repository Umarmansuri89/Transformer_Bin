import 'package:get/get.dart';
import 'package:transformer_bin/modules/Payment_due/controller/Payment_due_controller.dart';

class Payment_due_Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Payment_due_controller>(
          () => Payment_due_controller(),
    );
  }
}
