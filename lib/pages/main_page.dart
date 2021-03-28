import 'package:F_202110_StateManagement/pages/bloc_test.dart';
import 'package:F_202110_StateManagement/pages/getx_test.dart';
import 'package:F_202110_StateManagement/pages/provider_test.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _id = 0;

  _onPress() {
    setState(() {
      _id = _id + 1;
      if (_id > 2) {
        _id = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton(
            onPressed: () {
              _onPress();
            },
            child: Text("Change state manager")),
        Expanded(
            child: _id == 0
                ? ProviderTest()
                : _id == 1
                    ? BlocTest()
                    : GetXTest())
      ],
    );
  }
}
