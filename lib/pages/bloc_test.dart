import 'package:F_202110_StateManagement/model/simple_bloc_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocTest extends StatelessWidget {
  const BlocTest({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SimpleBlocState(),
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
    return BlocBuilder<SimpleBlocState, String>(
      builder: (context, state) => Text("$state"),
    );
  }
}

class P1 extends StatelessWidget {
  const P1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SimpleBlocState bloc = BlocProvider.of<SimpleBlocState>(context);
    return FlatButton(
      child: Text("Click me BLoC"),
      onPressed: () {
        bloc.add(MyEvent.change);
      },
    );
  }
}
