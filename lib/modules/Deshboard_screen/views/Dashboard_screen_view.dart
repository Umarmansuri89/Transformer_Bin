import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../global_widgets/appBar_with_subtitle.dart';

import '../../../routes/app_pages.dart';
import '../controllers/Dashboard_screen_controller.dart';

class Dashboard_screen_View extends GetView<Deshboard_screen_Controller> {


  @override
  Widget build(BuildContext context) {
   // controller.selectDatedialog(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbarSubTITLE("${controller.dob.value}", onTap),
      body: Container(
       // color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
  void onTap(context) {
    controller.selectDatedialog(context);

  }
}

onSubmit() {
  Get.toNamed(Routes.LOGIN);
}

