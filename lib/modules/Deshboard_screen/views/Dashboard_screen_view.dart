import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transformer_bin/utils/ColorValues.dart';
import '../../../global_widgets/appBar_with_subtitle.dart';
import '../../../global_widgets/textEnter.dart';
import '../../../routes/app_pages.dart';
import '../controllers/Dashboard_screen_controller.dart';

class Dashboard_screen_View extends GetView<Deshboard_screen_Controller> {

  List color=[
    ColorValues.dashbboard_card_back_colorrr,
    ColorValues.dashbboard_card_back_colorr,
    ColorValues.dashbboard_card_back_colorrrr,
  ];


  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
    );
   // controller.selectDatedialog(context);
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: appbarSubTITLE(controller.currentDate.toString(), onTap),
      appBar: appbarSubTITLE( "13/07/2022", onTap ),

          body: Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: TextFieldShow(
                                  text: "Dashboard",
                                  height: 1,
                                  color: ColorValues.info_text_color,
                                  fontsize: 32,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.25,
                                ),
                              ),

                              Container(
                                // width: MediaQuery.of(context).size.width,
                                child: Image.asset("assets/Images/carton.png",fit: BoxFit.cover,height: 220,width: 140,),
                              ),
                            ],
                          ),
                        ),

                      Padding(
                        padding: EdgeInsets.only(left: 20,right: 20,top: 200),
                       child: ListView(
                         // physics:NeverScrollableScrollPhysics(),
                         children: [

                           Card(
                               margin: const EdgeInsets.all(5),
                               color: ColorValues.dashbboard_card_back_color,
                               elevation: 10,
                               child:Container(
                                 margin: const EdgeInsets.only( top: 10, left: 5, right: 5,bottom: 5),
                                 child: ListView(
                                   shrinkWrap: true,
                                   physics:const NeverScrollableScrollPhysics(),
                                   // mainAxisAlignment: MainAxisAlignment.start,
                                   children: <Widget>[
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: <Widget>[

                                         Container(
                                           margin: const EdgeInsets.only(left: 12),
                                           child: const TextFieldShow(
                                             text: "Payment Due",
                                             height: 1,
                                             color: ColorValues.info_text_color,
                                             fontsize: 23,
                                             fontFamily: 'Lato',
                                             fontWeight: FontWeight.w700,
                                             letterSpacing: -0.31,

                                           ),
                                         ),

                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.end,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             const TextFieldShow(
                                               text: "View all ",
                                               // height: 0,
                                               color: ColorValues.info_text_color,
                                               fontsize: 14  ,
                                               fontFamily: 'Lato',
                                               fontWeight: FontWeight.w500,
                                             ),

                                             GestureDetector(
                                               onTap: (){
                                                 controller.onPaymentDue();
                                               },
                                               child: Container(
                                                 margin: const EdgeInsets.only(left: 6, right: 12,bottom: 6),
                                                 child: Image.asset("assets/Images/ViewAll.png",height: 20,width: 20,),
                                               ),
                                             ),

                                           ],)


                                       ],),

                                     ListView.builder(
                                       itemCount: 3,
                                       shrinkWrap: true,
                                       physics:const NeverScrollableScrollPhysics(),

                                       itemBuilder: (BuildContext context, int index) {
                                         return Container(
                                           padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                                           child: ExpansionTileCard(
                                             baseColor: ColorValues.red_color,
                                             expandedColor: ColorValues.BLACK,
                                             trailing: const SizedBox(),
                                             // key: controller.cardA,

                                             title: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                 children: [

                                                   TextFieldShow(
                                                     text: "2m Leopold",
                                                     color: Colors.white,
                                                     fontsize: 14  ,
                                                     fontFamily: 'Lato',
                                                     fontWeight: FontWeight.w600,
                                                   ),

                                                   TextFieldShow(
                                                     text: "#8422",
                                                     color: Colors.white,
                                                     fontsize: 10  ,
                                                     fontFamily: 'Lato',
                                                     fontWeight: FontWeight.w300,

                                                   ),
                                                 ],
                                             ),

                                             subtitle:  Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [

                                                 TextFieldShow(
                                                   text: "49 Pienza Way",
                                                   color: Colors.white,
                                                   fontsize: 8  ,
                                                   fontFamily: 'Lato',
                                                   fontWeight: FontWeight.w400,
                                                 ),

                                                 TextFieldShow(
                                                   text: "290",
                                                   color: Colors.white,
                                                   fontsize: 18  ,
                                                   fontFamily: 'Lato',
                                                   fontWeight: FontWeight.w400,
                                                 ),
                                               ],
                                             ),

                                             children:[

                                               Container(
                                                 padding: EdgeInsets.only(left: 13,right: 45),
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

                                                     GestureDetector(

                                                       onTap: (){
                                                         controller.onInfo();
                                                       },

                                                       child: Container(
                                                         padding: EdgeInsets.only(bottom: 2),
                                                         child: Image.asset("assets/Images/info.png",),
                                                       ),
                                                     )
                                                   ],
                                                 ),
                                               ),

                                               Padding(
                                                 padding: EdgeInsets.all(0),

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

                                             ],
                                           ),
                                         );
                                       },
                                     ),
                                   ],),
                               )
                           ),

                           Card(
                               margin: EdgeInsets.only(top: 30,left: 5,right: 5,bottom: 5),
                               color: ColorValues.dashbboard_card_back_color,
                               elevation: 10,
                               child:Container(
                                 margin: EdgeInsets.only( top: 10, left: 5, right: 5,bottom: 5),
                                 child: ListView(
                                   shrinkWrap: true,
                                   physics:const NeverScrollableScrollPhysics(),
                                   // mainAxisAlignment: MainAxisAlignment.start,
                                   children: <Widget>[
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       crossAxisAlignment: CrossAxisAlignment.center,
                                       children: <Widget>[
                                         Container(
                                           margin: const EdgeInsets.only(left: 12),
                                           child: const TextFieldShow(
                                             text: "Not Assigned",
                                             height: 1,
                                             color: ColorValues.info_text_color,
                                             fontsize: 23,
                                             fontFamily: 'Lato',
                                             fontWeight: FontWeight.w700,
                                             letterSpacing: -0.31,
                                           ),
                                         ),
                                         Row(
                                           mainAxisAlignment: MainAxisAlignment.end,
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: <Widget>[
                                             const TextFieldShow(
                                               text: "View all ",
                                               // height: 0,
                                               color: ColorValues.info_text_color,
                                               fontsize: 14  ,
                                               fontFamily: 'Lato',
                                               fontWeight: FontWeight.w500,
                                             ),

                                             GestureDetector(
                                               onTap: (){
                                                 controller.onNotAssigned();
                                               },
                                               child: Container(
                                                 margin: const EdgeInsets.only(left: 6, right: 12,bottom: 6),
                                                 child: Image.asset("assets/Images/ViewAll1.png",height: 20,width: 20,),
                                               ),
                                             ),

                                           ],)
                                       ],),

                                     ListView.builder(
                                       itemCount: 3,
                                       shrinkWrap: true,
                                       physics:const NeverScrollableScrollPhysics(),
                                       itemBuilder: (BuildContext context, int index) {
                                         return Container(
                                           padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                                           child: ExpansionTileCard(
                                             baseColor: color[index],
                                             expandedColor: Colors.black,
                                             trailing: const SizedBox(),
                                             // key: controller.cardA,
                                             title: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 TextFieldShow(
                                                   text: "2m Leopold ",
                                                   color: Colors.white,
                                                   fontsize: 14  ,
                                                   fontFamily: 'Lato',
                                                   fontWeight: FontWeight.w600,
                                                 ),

                                                 TextFieldShow(
                                                   text: "#8422 ",
                                                   color: Colors.white,
                                                   fontsize: 10  ,
                                                   fontFamily: 'Lato',
                                                   fontWeight: FontWeight.w300,
                                                 ),
                                               ],
                                             ),

                                             subtitle: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 TextFieldShow(
                                                   text: "228 Walker Street",
                                                   color: Colors.white,
                                                   fontsize: 8  ,
                                                   fontFamily: 'Lato',
                                                   fontWeight: FontWeight.w400,
                                                 ),

                                                 TextFieldShow(
                                                   text: "290",
                                                   color: Colors.white,
                                                   fontsize: 18  ,
                                                   fontFamily: 'Lato',
                                                   fontWeight: FontWeight.w400,
                                                 ),

                                               ],

                                             ),
                                             children:[

                                               Container(
                                                 padding: EdgeInsets.only(left: 13,right: 45),
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

                                                   GestureDetector(

                                                     onTap: (){
                                                       controller.onJobtype();
                                                     },

                                                     child: Container(
                                                       padding: EdgeInsets.only(bottom: 2),
                                                       child: Image.asset("assets/Images/info.png",),
                                                     ),
                                                   )

                                                   ],
                                                 ),
                                               ),

                                               Padding(
                                                 padding: EdgeInsets.all(0),
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

                                             ],
                                           ),
                                         );
                                       },
                                     ),
                                   ],),
                               )
                           ),
                         ],
                       ),
                      ),

                       //                       Padding(
//                         padding: EdgeInsets.only(left: 20,right: 20,top: 20),
//                        child: Card(
//                           color: Colors.white,
//                          elevation: 10,
//                          child: Padding(
//                            padding: EdgeInsets.all(10),
//                          child:
//                          Column(
//                           // mainAxisAlignment: MainAxisAlignment.start,
//                            children: <Widget>[
//                            Row(
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                              children: <Widget>[
//                                TextFieldShow(
//                                  text: "Payment Due",
//                                  height: 1,
//                                  color: Color(0xFF2E2E2E),
//                                  fontsize: 18,
//                                  fontFamily: 'Lato',
//                                  fontWeight: FontWeight.w600,
//                                ),
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.end,
//                                  children: <Widget>[
//                                    TextFieldShow(
//                                      text: "View all ",
//                                      // height: 0,
//                                      color: Color(0xFF2E2E2E),
//                                      fontsize: 14  ,
//                                      fontFamily: 'Lato',
//                                      fontWeight: FontWeight.w600,
//                                    ),
//
//                                    Container(
//                                      // width: MediaQuery.of(context).size.width,
//                                      child: Image.asset("assets/Images/ViewAll.png",height: 34,width: 34,),
//                                    ),
//
//                                  ],)
//
//
//                              ],),
//                              Container(
//                                height: 400,
//                                child:  ListView(
//                                  children: <Widget>[
//                                    Padding(
//                                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                                      child: ExpansionTileCard(
//                                        key: controller.cardA,
//                                        leading: CircleAvatar(child: Text('A')),
//                                        title: Text('Tap me!'),
//                                        subtitle: Text('I expand!'),
//                                        children: <Widget>[
//                                          Divider(
//                                            thickness: 1.0,
//                                            height: 1.0,
//                                          ),
//                                          Align(
//                                            alignment: Alignment.centerLeft,
//                                            child: Padding(
//                                              padding: const EdgeInsets.symmetric(
//                                                horizontal: 16.0,
//                                                vertical: 8.0,
//                                              ),
//                                              child: Text(
//                                                """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.
//
// Use me any time you think your app could benefit from being just a bit more Material.
//
// These buttons control the next card down!""",
//                                                style: Theme.of(context)
//                                                    .textTheme
//                                                    .bodyText2!
//                                                    .copyWith(fontSize: 16),
//                                              ),
//                                            ),
//                                          ),
//                                          ButtonBar(
//                                            alignment: MainAxisAlignment.spaceAround,
//                                            buttonHeight: 52.0,
//                                            buttonMinWidth: 90.0,
//                                            children: <Widget>[
//                                              TextButton(
//                                                style: flatButtonStyle,
//                                                onPressed: () {
//                                                  controller.cardB.currentState?.expand();
//                                                },
//                                                child: Column(
//                                                  children: <Widget>[
//                                                    Icon(Icons.arrow_downward),
//                                                    Padding(
//                                                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                                                    ),
//                                                    Text('Open'),
//                                                  ],
//                                                ),
//                                              ),
//                                              TextButton(
//                                                style: flatButtonStyle,
//                                                onPressed: () {
//                                                  controller.cardB.currentState?.collapse();
//                                                },
//                                                child: Column(
//                                                  children: <Widget>[
//                                                    Icon(Icons.arrow_upward),
//                                                    Padding(
//                                                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                                                    ),
//                                                    Text('Close'),
//                                                  ],
//                                                ),
//                                              ),
//                                              TextButton(
//                                                style: flatButtonStyle,
//                                                onPressed: () {
//                                                  controller.cardB.currentState?.toggleExpansion();
//                                                },
//                                                child: Column(
//                                                  children: <Widget>[
//                                                    Icon(Icons.swap_vert),
//                                                    Padding(
//                                                      padding: const EdgeInsets.symmetric(vertical: 2.0),
//                                                    ),
//                                                    Text('Toggle'),
//                                                  ],
//                                                ),
//                                              ),
//                                            ],
//                                          ),
//                                        ],
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              )
//
//
//                          ],)
//
//                          ),
//                       ),
//                       )

                      ],
                    )
    );
  }


  void onTap(ctx) {

    showCupertinoModalPopup(
        context: ctx,
        builder: (_) => Container(
          height: 190,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              SizedBox(
                height: 180,
                child: CupertinoDatePicker(
                    initialDateTime: DateTime.now(),
                    onDateTimeChanged: (val) {
                        controller.dateSelected.value = val.toString();
                    }),
              ),

            ],
          ),
        ));
  }
}

onSubmit() {
  Get.toNamed(Routes.LOGIN);
}

