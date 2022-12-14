import 'package:flutter/material.dart';
import '../utils/image_helper.dart';

buildLoading(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return StreamBuilder<Object>(
            stream: null,
            builder: (context, snapshot) {
              return Stack(
                children: [
                  Center(
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0,left: 10),
                        child: SizedBox(
                          height: 30.0,
                          width: 30.0,
                          child: Transform.scale(
                            scale: 2,
                            child: const CircularProgressIndicator(
                              strokeWidth: 2,
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.amber),
                            ),
                          ),
                        ),
                      ),
                      const Image(
                        image: AssetImage(LOGO_LAUNCHER_TRANS),
                        height: 0,
                        fit: BoxFit.fill,
                        width: 0,
                      )
                    ]),
                  ),
                ],
              );
            });
      });
}
