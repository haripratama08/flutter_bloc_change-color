import 'package:evaluasi_first_bloc/blocs/colorBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc blocColor = BlocProvider.of<ColorBloc>(context);
    return FloatingActionButton(
      backgroundColor: Colors.black,
      onPressed: () {
      },
      child: IconButton(
        onPressed: () {
          print("masuk iconbutton");
          blocColor.add(!context.read<ColorBloc>().state);
        },
        color: Colors.amber,
        icon: Icon(Icons.palette_outlined),
      ),
    );
  }
}
