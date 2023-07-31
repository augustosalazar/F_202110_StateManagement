import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/simple_bloc_state.dart';

class BlocTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => SimpleBlocState(),
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
      children: [Expanded(child: P1()), Expanded(child: P2())],
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
      child: BlocBuilder<SimpleBlocState, String>(
        builder: (context, state) => Center(child: Text("$state")),
      ),
    );
  }
}

class P1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SimpleBlocState bloc = BlocProvider.of<SimpleBlocState>(context);
    return Container(
      margin: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).primaryColor),
      child: OutlinedButton(
        child: Text("Click me BLoC"),
        onPressed: () {
          bloc.add(MyEvent.change);
        },
      ),
    );
  }
}
