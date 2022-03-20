import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:heydealer/src/home.dart';
import 'package:heydealer/src/pages/find_info.dart';
import 'package:heydealer/src/pages/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'HeyDealer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>Home(), transition: Transition.fadeIn),
        GetPage(name: "/loading", page: ()=>LoadingPage(), transition: Transition.downToUp),
        GetPage(name: "/find_info", page: ()=>FindInfo(), transition: Transition.fadeIn),
      ]
    );
  }
}
