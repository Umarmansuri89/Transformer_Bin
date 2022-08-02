import 'package:flutter/material.dart';
import '../utils/image_helper.dart';

// Note : photo video app bar worked diffrently
ClipRRect ImageDesignSearch(double height, double width, String imgUrl,
        double borderRadius, String defaultImg) =>
    ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: (identical(imgUrl, 'show_more'))
            ? Image(
                fit: BoxFit.fill,
                height: height,
                width: width,
                color: Colors.amber,
                image: const AssetImage(DOWN_IMAGE),
              )
            : Image(
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return Image.asset(
                    defaultImg,
                    height: 30,
                    width: 30,
                  );
                },
                fit: BoxFit.fill,
                height: height,
                width: width,
                image: NetworkImage(imgUrl),
              ));
