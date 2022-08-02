import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appbarSubTITLE_one(String title, String subTitle, Function onTap) =>
    AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      elevation: 2,
      leadingWidth: 30,
      backgroundColor: const Color(0xff0D0B21),
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Container()
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
          GestureDetector(
            onTap: () {
              onTap();
            },
            child: Text(
              subTitle,
              style: const TextStyle(color: Colors.pink, fontSize: 16),
            ),
          ),
        ],
      ),
    );
