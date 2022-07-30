import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../global_widgets/Text_field_information.dart';
import '../Controller/information_controller.dart';

class InformationView extends StatelessWidget {
   InformationView({Key? key}) : super(key: key);
   final _currentIndex = 0.obs;
  final controller = Get.put(Information_controler());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //ApiService.context = context;
    return Scaffold(
      // appBar: appbarSubTITLE("${controller.currentDate.toString()}", onTap),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            Divider(color:Colors.deepOrange,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Waste Type", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("Skip Bin Heavy Waste", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Bin Size", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("2m", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Bine Taype", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("2m", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Scheduled", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("15/06/2022", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text("Bine Price", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 15, right: 10),
                    child: Text("290.00 inc gst", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Qustanding", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("2900.0. ins gst", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Paymet Method", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("EFT", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 15, left: 10),
                    child: Text("Customer", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 15, right: 10),
                    child: Text("John Lyng Group EBN \nJVA29219, J/n  221660012", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Company", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text("Phone", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10),
                    child: Text("EFT", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, left: 10, bottom: 10),
                    child: Text("Mobile", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 5, right: 10, bottom: 10),
                    child: Text("0401647343", style: TextStyle(color: Colors.black, fontSize: 14),),
                  ),
                )
              ],
            ),

            Divider(color:Colors.deepOrange,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  child: Text("Notes", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10,right: 10),
                      child: Icon(
                        Icons.phone_rounded, size: 20,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10,right: 10),
                      child: Icon(
                        Icons.message_sharp, size: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: MediaQuery.of(context).size.height * 0.03),
              child: TextField_Note(

                controller: controller.note_Controller,

                // validator: (value) {
                //   if (value != null && !value.isEmail) {
                //     return 'Invalid Email ID.';
                //   }
                //   return null;
                // },
                maxLines: 2,
                fontSize: 14,
                maxLength: 50,
                minLines: 2,
                hintText: "E-mail",
                hintStyle: Color(0xffCCD2E3),
                autovalidateMode: AutovalidateMode.onUserInteraction,
                readOnly: false,
                keyboardType: TextInputType.text,

                // prefixIcon: Icon(
                //   Icons.email_outlined,
                //   color: Color(0xffCCD2E3),
                //   size: 16.0,
                // ),
              ),
            ),

          ],

        ),
      ),
    );

  }
}




// class InformationView extends StatefulWidget {




