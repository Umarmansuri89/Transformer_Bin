import 'package:flutter/material.dart';

AppBar appbarSubTITLE(String subTitle, Function onTap) =>
    AppBar(
      iconTheme: const IconThemeData(
        color: Colors.white, //change your color here
      ),
      elevation: 0,
      leadingWidth: 30,
      titleSpacing: 27,
      backgroundColor: const Color(0xffffffff),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [

          GestureDetector(
              onTap: () {
                // Get.back();
              },
              child: Image.asset('assets/Images/Menu.png',height: 40,width: 40,)
          ),

          Row(

            children: <Widget>[
            GestureDetector(
              onTap: () {
                onTap();
                //Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.black12,
                size: 16,
              ),
            ),

            GestureDetector(

              onTap: () {
                onTap();
                print('ssssssssssssss');
              },

              child: Text(
                subTitle,
                style:  TextStyle(color: Color(0xffF79534), fontSize: 16),
              ),
            ),

            GestureDetector(
              onTap: () {
                onTap();
                //Get.back();
              },
              child: Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.black12,
                size: 16,
              ),
            ),

          ],)

        ],
      ),
    );
