import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../global_widgets/appBar_with_subtitle.dart';

import '../../../global_widgets/textEnter.dart';
import '../../../routes/app_pages.dart';
import '../controllers/Dashboard_screen_controller.dart';

class Dashboard_screen_View extends GetView<Deshboard_screen_Controller> {


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
      appBar: appbarSubTITLE("${controller.currentDate.toString()}", onTap),
      body:
                    Stack(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: TextFieldShow(
                                  text: "Dashbord",
                                  height: 1,
                                  color: Color(0xFF2E2E2E),
                                  fontsize: 28,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
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
                        padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                       child: Card(
                         margin: EdgeInsets.all(5),
                          color: Colors.white,
                         elevation: 10,
                         child:Container(
                           margin: EdgeInsets.all(5),
                           child: ListView(
                             shrinkWrap: true,
                             // physics:NeverScrollableScrollPhysics(),
                             // mainAxisAlignment: MainAxisAlignment.start,
                             children: <Widget>[
                               Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: <Widget>[
                                   TextFieldShow(
                                     text: "Payment Due",
                                     height: 1,
                                     color: Color(0xFF2E2E2E),
                                     fontsize: 18,
                                     fontFamily: 'Lato',
                                     fontWeight: FontWeight.w600,
                                   ),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.end,
                                     children: <Widget>[
                                       TextFieldShow(
                                         text: "View all ",
                                         // height: 0,
                                         color: Color(0xFF2E2E2E),
                                         fontsize: 14  ,
                                         fontFamily: 'Lato',
                                         fontWeight: FontWeight.w600,
                                       ),

                                       Container(
                                         // width: MediaQuery.of(context).size.width,
                                         child: Image.asset("assets/Images/ViewAll.png",height: 34,width: 34,),
                                       ),

                                     ],)


                                 ],),
                               Container(
                                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                 child: ExpansionTileCard(
                                   key: controller.cardA,
                                   leading: CircleAvatar(child: Text('A')),
                                   title: Text('Tap me!'),
                                   subtitle: Text('I expand!'),
                                   children: <Widget>[
                                     Divider(
                                       thickness: 1.0,
                                       height: 1.0,
                                     ),
                                     Align(
                                       alignment: Alignment.centerLeft,
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(
                                           horizontal: 16.0,
                                           vertical: 8.0,
                                         ),
                                         child: Text(
                                           """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

Use me any time you think your app could benefit from being just a bit more Material.

These buttons control the next card down!""",
                                           style: Theme.of(context)
                                               .textTheme
                                               .bodyText2!
                                               .copyWith(fontSize: 16),
                                         ),
                                       ),
                                     ),
                                     ButtonBar(
                                       alignment: MainAxisAlignment.spaceAround,
                                       buttonHeight: 52.0,
                                       buttonMinWidth: 90.0,
                                       children: <Widget>[
                                         TextButton(
                                           style: flatButtonStyle,
                                           onPressed: () {
                                             controller.cardB.currentState?.expand();
                                           },
                                           child: Column(
                                             children: <Widget>[
                                               Icon(Icons.arrow_downward),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 2.0),
                                               ),
                                               Text('Open'),
                                             ],
                                           ),
                                         ),
                                         TextButton(
                                           style: flatButtonStyle,
                                           onPressed: () {
                                             controller.cardB.currentState?.collapse();
                                           },
                                           child: Column(
                                             children: <Widget>[
                                               Icon(Icons.arrow_upward),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 2.0),
                                               ),
                                               Text('Close'),
                                             ],
                                           ),
                                         ),
                                         TextButton(
                                           style: flatButtonStyle,
                                           onPressed: () {
                                             controller.cardB.currentState?.toggleExpansion();
                                           },
                                           child: Column(
                                             children: <Widget>[
                                               Icon(Icons.swap_vert),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 2.0),
                                               ),
                                               Text('Toggle'),
                                             ],
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               ),
                               Container(
                                 padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                 child: ExpansionTileCard(
                                   key: controller.cardA,
                                   leading: CircleAvatar(child: Text('A')),
                                   title: Text('Tap me!'),
                                   subtitle: Text('I expand!'),
                                   children: <Widget>[
                                     Divider(
                                       thickness: 1.0,
                                       height: 1.0,
                                     ),
                                     Align(
                                       alignment: Alignment.centerLeft,
                                       child: Padding(
                                         padding: const EdgeInsets.symmetric(
                                           horizontal: 16.0,
                                           vertical: 8.0,
                                         ),
                                         child: Text(
                                           """Hi there, I'm a drop-in replacement for Flutter's ExpansionTile.

Use me any time you think your app could benefit from being just a bit more Material.

These buttons control the next card down!""",
                                           style: Theme.of(context)
                                               .textTheme
                                               .bodyText2!
                                               .copyWith(fontSize: 16),
                                         ),
                                       ),
                                     ),
                                     ButtonBar(
                                       alignment: MainAxisAlignment.spaceAround,
                                       buttonHeight: 52.0,
                                       buttonMinWidth: 90.0,
                                       children: <Widget>[
                                         TextButton(
                                           style: flatButtonStyle,
                                           onPressed: () {
                                             controller.cardB.currentState?.expand();
                                           },
                                           child: Column(
                                             children: <Widget>[
                                               Icon(Icons.arrow_downward),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 2.0),
                                               ),
                                               Text('Open'),
                                             ],
                                           ),
                                         ),
                                         TextButton(
                                           style: flatButtonStyle,
                                           onPressed: () {
                                             controller.cardB.currentState?.collapse();
                                           },
                                           child: Column(
                                             children: <Widget>[
                                               Icon(Icons.arrow_upward),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 2.0),
                                               ),
                                               Text('Close'),
                                             ],
                                           ),
                                         ),
                                         TextButton(
                                           style: flatButtonStyle,
                                           onPressed: () {
                                             controller.cardB.currentState?.toggleExpansion();
                                           },
                                           child: Column(
                                             children: <Widget>[
                                               Icon(Icons.swap_vert),
                                               Padding(
                                                 padding: const EdgeInsets.symmetric(vertical: 2.0),
                                               ),
                                               Text('Toggle'),
                                             ],
                                           ),
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),
                               )


                             ],),
                         )
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
          color: Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              Container(
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

