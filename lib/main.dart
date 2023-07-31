import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'model/simple_getx_controller.dart';
import 'pages/main_page.dart';
import 'theme/theme.dart';

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
