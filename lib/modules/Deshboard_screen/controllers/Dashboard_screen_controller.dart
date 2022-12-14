import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rounded_date_picker/flutter_rounded_date_picker.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../routes/app_pages.dart';


class Deshboard_screen_Controller extends GetxController {
  final count = 0.obs;
  var isLoading = false.obs;
  final current = 0.obs;
  final dob = "".obs;
  final dateSelected = "".obs;
  final GlobalKey<ExpansionTileCardState> cardA = GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB = GlobalKey();
  DateTime currentDate = DateTime.now();

  DateTime get selectedDate =>
      DateTime(currentDate.year, currentDate.month, currentDate.day);
  DateFormat formatter = DateFormat('dd/MM/yyyy');

  TextEditingController dobCntroller = TextEditingController(text: "");


  selectDatedialog(context) async {
    final DateTime? picked = await showRoundedDatePicker(
      context: context,
      initialDate: selectedDate,
      lastDate:
      DateTime(currentDate.year, currentDate.month, currentDate.day + 1),
      firstDate: DateTime(1950, 01, 01),
      theme: ThemeData(
        primaryColor: Colors.grey.shade100,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Theme.of(context).primaryColor),
          caption: TextStyle(color: Theme.of(context).primaryColor),
        ),
        dialogBackgroundColor: Colors.grey.shade100,
        disabledColor: Colors.grey.shade400, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Theme.of(context).primaryColor),
      ),
    );
    if (picked != null) dob.value = formatter.format(picked).toString();
  }

  @override
  void onClose() {}


  void increment() => count.value++;

  void onDashboard() async {
    Get.toNamed(Routes.DASHBOARD);
  }

  void onPaymentDue() async {
    Get.toNamed(Routes.PAYMENT_DUE);
  }

  void onNotAssigned() async {
    Get.toNamed(Routes.SCHEDULE);
  }

  void onInfo() async {
    Get.toNamed(Routes.INFORMTION);
  }

  void onJobtype() async {
    Get.toNamed(Routes.JOBTYPE);
  }

  // void getAdvertisementList() async {
  //   advertisementList.add("");
  //   advertisementList.add("");
  //   advertisementList.add("");
  // }
}
