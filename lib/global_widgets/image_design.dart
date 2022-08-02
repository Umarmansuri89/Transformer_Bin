import 'package:flutter/material.dart';


// Note : photo video app bar worked diffrently
ClipRRect ImageDesign(double height, double width, String imgUrl,
        double borderRadius, String defaultImg) =>
    ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: (identical(imgUrl, 'show_more'))
            ? Image(
                fit: BoxFit.cover,
                height: height,
                width: width,
                color: Colors.amber,
                image: NetworkImage(imgUrl),
              )
            : Image(
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    defaultImg,
                    fit: BoxFit.cover,
                    height: height,
                    width: width,
                  );
                },
                fit: BoxFit.cover,
                height: height,
                width: width,
                image: NetworkImage(imgUrl),
              ));
