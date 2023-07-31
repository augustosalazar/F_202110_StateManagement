import 'package:flutter/material.dart';

import 'bloc_test.dart';
import 'getx_test.dart';
import 'provider_test.dart';

class MainPage extends StatefulWidget {
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
