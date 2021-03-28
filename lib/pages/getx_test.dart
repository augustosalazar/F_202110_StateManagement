import 'package:F_202110_StateManagement/model/simple_getx_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetXTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OneRow();
  }
}

class OneRow extends StatelessWidget {
  const OneRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(flex: 1, child: P1()),
        Expanded(flex: 1, child: P2())
      ],
    );
  }
}

class P2 extends StatelessWidget {
  const P2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).accentColor),
      child: Center(child: GetX<SimpleGetXController>(builder: (controller) {
        return Text(
          '${controller.someValue}',
        );
      })),
    );
  }
}

class P1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SimpleGetXController controller = Get.find();
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).accentColor),
      child: OutlinedButton(
        child: Text(
          'Click me with GetX',
        ),
        onPressed: () {
          controller.setValue();
        },
      ),
    );
  }
}
