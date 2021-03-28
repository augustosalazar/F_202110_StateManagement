import 'package:F_202110_StateManagement/model/simple_getx_controller.dart';
import 'package:F_202110_StateManagement/pages/main_page.dart';
import 'package:F_202110_StateManagement/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(SimpleGetXController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: MyTheme.lightTheme,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter state"),
          ),
          body: MainPage(),
        ));
  }
}
