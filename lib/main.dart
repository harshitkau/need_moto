import 'package:flutter/material.dart';
import 'package:need_moto/controllers/controllerkyc.dart';
import 'package:need_moto/controllers/menucontroller.dart';
import 'package:need_moto/mywidget.dart';
import 'package:need_moto/screens/seventh.dart';
import 'package:need_moto/screens/sixth.dart';
import 'package:get/get.dart';
import 'package:need_moto/screens/tenth.dart';

void main() {
  //making the menu controller available
  //throughout the app
  //Get.put(MenuController());
  Get.put(KycController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        initialRoute: '/sixth',
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/sixth', page: () => sixth()),
          GetPage(name: '/seventh', page: () => seventh()),
          //GetPage(name: '/mywidget', page: () => MyWidget()),
          GetPage(name: '/tenth', page: () => Tenth()),
        ]);
  }
}
