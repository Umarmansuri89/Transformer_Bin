import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transformer_bin/global_widgets/textEnter.dart';
import 'package:transformer_bin/utils/ColorValues.dart';

import '../../../global_widgets/Text_field_information.dart';
import '../../../global_widgets/appBar_with_subtitle.dart';
import '../../../routes/app_pages.dart';
import '../Controller/information_controller.dart';

class InformationView extends StatelessWidget {
   InformationView({Key? key}) : super(key: key);
   final _currentIndex = 0.obs;
  final controller = Get.put(Information_controler());

  String? Product_name="UNPAID";
  String? drop_down_item;

   List<DropdownMenuItem<String>> _dropDownProduct() {
     List<String> ddl = ["UNPAID","CNC", "BO", "CO"];
     return ddl.map((value) => DropdownMenuItem(
       value: value,
       child: Text(value),
     ))
         .toList();
   }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //ApiService.context = context;
    return Scaffold(
      appBar: appbarSubTITLE("12/12/2022", onTap),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 10,
                        backgroundColor:ColorValues.green_color,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5,top: 5),
                        child: TextFieldShow(
                          text: "Delivered ",
                          color:ColorValues.green_color,
                          fontsize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      GestureDetector(
                          onTap: (){
                            showDialog<String>(
                              context: context,
                              builder: (BuildContext context) =>

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Container(
                                          height: 385,
                                          width:374,
                                          child: Image.asset("assets/Images/carton.png"),
                                        ),
                                      ),
                                    ],

                                  ),

                            );

                          },
                          child: const Icon(Icons.attach_file,size: 18,color: Colors.grey))
                    ],
                  ),
                  const Icon(Icons.arrow_back_ios_new, color: ColorValues.background_divider_color,)
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10,right: 10, top: 2,bottom: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldShow(
                    text: "2m Leopold",
                    color: ColorValues.info_text_color,
                    fontsize: 21,
                    fontWeight: FontWeight.w600,
                  ),
                  Container(
                    height: 30,
                    width: 150,
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ColorValues.red_color,
                    ),

                    child: Container(
                      margin: EdgeInsets.only(bottom: 5,left: 8,right: 5),
                      child: DropdownButton(
                        isExpanded: true,
                        value: "$Product_name",
                        icon: Icon(Icons.arrow_drop_down,color: ColorValues.button_info_text_color,),
                        iconSize: 15,
                        elevation: 5,
                        underline: Container(),
                        style: TextStyle(color: ColorValues.button_info_text_color, fontSize: 10,fontWeight: FontWeight.w700),
                        onChanged: (value) {
                          Product_name = value.toString();
                          drop_down_item = Product_name;
                          print("value Product_name==== $drop_down_item");
                        },
                        items: _dropDownProduct(),
                      ),
                    ),
                  )
                ],
              ),
            ),

            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Padding(

               padding: EdgeInsets.symmetric(
                   horizontal: 10,
               ),

               child: TextFieldShow(
                 text: "#8422",
                 color: ColorValues.info_text_color,
                 fontsize: 14,
                 fontWeight: FontWeight.w300,
               ),

             ),

             Padding(

               padding: EdgeInsets.symmetric(

                   horizontal: 10
               ),

               child: TextFieldShow(
                 text: "Issue Receipt",
                 color: ColorValues.info_text_color,
                 fontsize: 14,
                 fontWeight: FontWeight.w600,
               ),

             ),
           ],

         ),
            Padding(
              padding:const EdgeInsets.symmetric( horizontal: 7),

             child: Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7.0),
              ),

              child: Image.network("https://media.wired.com/photos/59269cd37034dc5f91bec0f1/191:100/w_1280,c_limit/GoogleMapTA.jpg",
              fit: BoxFit.fill,
              height: 180,),
            ),
          ),

            const Padding(
              padding: EdgeInsets.only(left: 12,right: 12,top: 16),

              child:  TextFieldShow(
                text: "49 Pienza Way Leopold",
                color: ColorValues.info_text_color,
                fontsize: 17,
                fontWeight: FontWeight.w600,
              ),

            ),

            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
                child: const Divider(color:ColorValues.background_divider_color,)),
            Row(
              children: [

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child: TextFieldShow(
                      text: "Waste Type",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "Skip Bin Heavy Waste",
                      color:ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child: TextFieldShow(
                      text: "Bin Size",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "2m",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child: TextFieldShow(
                      text: "Bin Type",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "2m",
                      color:ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child:TextFieldShow(
                      text: "Scheduled",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "15/06/2022",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),


              ],
            ),

            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
                child: const Divider(color:ColorValues.background_divider_color,)),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, left: 10),
                    child: TextFieldShow(
                      text: "Bin Price",
                      color:ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, right: 10),
                    child: TextFieldShow(
                      text: "290.00 inc gst",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child:TextFieldShow(
                      text: "Outstanding",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "290.00 inc gst",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child: TextFieldShow(
                      text: "Payment Method",
                      color:ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "EFT",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

             Container(
                 padding: EdgeInsets.only(left: 10,right: 10),
                 child: Divider(color:ColorValues.background_divider_color,)),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, left: 10),
                    child:TextFieldShow(
                      text: "Customer",
                      color:ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, right: 10),
                    child:TextFieldShow(
                      text: "John Lyng Group EBN \nJVA29219, J/n  221660012",
                      color:ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),

                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child: TextFieldShow(
                      text: "Company",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10),
                    child: TextFieldShow(
                      text: "Phone",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10),
                    child: TextFieldShow(
                      text: "EFT",
                      color:ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10, bottom: 10),
                    child: TextFieldShow(
                      text: "Mobile",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10, bottom: 10),
                    child: TextFieldShow(
                      text: "0401647343",
                      color: ColorValues.info_text_color,
                      fontsize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),

            Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                child: const Divider(color:ColorValues.background_divider_color,)),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
                  child: TextFieldShow(
                    text: "Notes",
                    color: ColorValues.grey_color,
                    fontsize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10,right: 10),
                      child: const Icon(
                        Icons.phone_rounded, size: 20,color: ColorValues.info_text_color,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10,right: 10),
                      child: const Icon(
                        Icons.message_sharp,color: ColorValues.info_text_color, size: 20,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10),
              child: TextField_Note(

                controller: controller.note_Controller,

                // validator: (value) {
                //   if (value != null && !value.isEmail) {
                //     return 'Invalid Email ID.';
                //   }
                //   return null;
                // },

                maxLines: 7,
                fontSize: 14,
                maxLength: 50,
                minLines: 1,
                hintText: " ",
                hintStyle: const Color(0xffCCD2E3),
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
            Row(
              children: [
                Container(

                  padding: const EdgeInsets.only(left: 5, right: 5, top: 5,),
                  margin: const EdgeInsets.only(left: 10, top: 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: ColorValues.background_divider_color,
                  ),
                  child: TextFieldShow(
                    text: "LOG NOTE",
                    color: ColorValues.button_info_text_color,
                    fontsize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),

            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, left: 10, bottom: 5),
                    child:TextFieldShow(
                      text: "01/12/2022",
                      color: ColorValues.info_text_color,
                      fontsize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15, right: 10, bottom: 5),
                    child:TextFieldShow(
                      text: "01/12/2022",
                      color: ColorValues.info_text_color,
                      fontsize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, left: 10, bottom: 10),
                    child:TextFieldShow(
                      text: "02/12/2022",
                      color: ColorValues.info_text_color,
                      fontsize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.only(top: 5, right: 10, bottom: 10),
                    child:TextFieldShow(
                      text: "01/12/2022",
                      color: ColorValues.info_text_color,
                      fontsize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),


          ],

        ),
      ),
    );

  }
}
onTap() {
  Get.toNamed(Routes.LOGIN);
}




// class InformationView extends StatefulWidget {




