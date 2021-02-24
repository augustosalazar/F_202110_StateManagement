import 'package:F_202110_StateManagement/model/simple_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderTest extends StatelessWidget {
  const ProviderTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<SingleModel>(
      create: (context) => SingleModel(),
      child: OneRow(),
    );
  }
}

class OneRow extends StatelessWidget {
  const OneRow({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [P1(), P2()],
    );
  }
}

class P2 extends StatelessWidget {
  const P2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SingleModel>(
      builder: (context, model, child) {
        return Text('${model.get_some_value}');
      },
    );
  }
}

class P1 extends StatelessWidget {
  const P1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        color: Theme.of(context).accentColor,
        child: Text(
          'Click me with Provider',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          Provider.of<SingleModel>(context, listen: false).setSomeValue();
        },
      ),
    );
  }
}
