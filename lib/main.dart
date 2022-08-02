import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transformer_bin/routes/app_pages.dart';



class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

Future<void> main() async {

  /* await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);*/


  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        /* scaffoldBackgroundColor: const Color(0xFFEFEFEF),*/
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primaryColor: const Color(0xff0D0B21),
          textSelectionTheme:
          const TextSelectionThemeData(cursorColor: Colors.black), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
    ),
  );
}
