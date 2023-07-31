import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/simple_model.dart';

class ProviderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SingleModel>(
      create: (context) => SingleModel(),
      child: OneRow(),
    );
  }
}

class OneRow extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor),
      child: Consumer<SingleModel>(
        builder: (context, model, child) {
          return Center(
            child: Text(
              '${model.get_some_value}',
            ),
          );
        },
      ),
    );
  }
}

class P1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor),
      child: OutlinedButton(
        child: Text(
          'Click me with Provider',
        ),
        onPressed: () {
          Provider.of<SingleModel>(context, listen: false).setSomeValue();
        },
      ),
    );
  }
}
