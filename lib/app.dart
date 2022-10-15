import 'package:creative_company_task/base.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: 'Creative Company Task',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "Poppins"),
        home: const BaseScreen(),
      );
    });
  }
}
