import 'package:flutter/material.dart';
import 'package:transformer_bin/global_widgets/textEnter.dart';


import '../utils/image_helper.dart';

// Note : photo video app bar worked diffrently
Center NoDataFoundDesing() => Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(
          height: 100,
        ),
        Image(
          image: AssetImage(NODATA),
          height: 30,
          width: 30,
        ),
        TextFieldShow(
          text: 'No data found...',
          fontsize: 15,
          color: Colors.white,
          fontWeight: FontWeight.w300,
        ),
      ],
    ));
