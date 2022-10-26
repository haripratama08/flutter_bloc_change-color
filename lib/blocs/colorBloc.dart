import 'package:flutter_bloc/flutter_bloc.dart';

class ColorBloc extends Bloc<bool, bool> {
  ColorBloc() : super(false);

  bool _theme = false;

  @override
  Stream<bool> mapEventToState(bool event) async* {
    _theme = !_theme;
    print(_theme);
    yield _theme;
  }
}
