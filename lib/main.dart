import 'package:evaluasi_first_bloc/blocs/colorBloc.dart';
import 'package:evaluasi_first_bloc/blocs/counterbloc.dart';
import 'package:evaluasi_first_bloc/ui/floating.dart';
import 'package:evaluasi_first_bloc/ui/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: BlocProvider(
        create: (context) => CounterBloc(),
        child: BlocBuilder<ColorBloc, bool>(
          builder: (context, state) {
            return MaterialApp(
              theme: state ? ThemeData.dark() : ThemeData.light(),
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            );
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Percobaan Bloc"),
      ),
      body: MainPage(),
      floatingActionButton: FloatingAction(),
    );
  }
}
