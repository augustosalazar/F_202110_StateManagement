import 'package:flutter_bloc/flutter_bloc.dart';

enum MyEvent { change }

class SimpleBlocState extends Bloc<MyEvent, String> {
  SimpleBlocState() : super("Pos1");

  @override
  Stream<String> mapEventToState(MyEvent event) async* {
    switch (event) {
      case MyEvent.change:
        String t = state == "Pos1" ? "Pos2" : "Pos1";
        yield t;
        break;
    }
  }
}
