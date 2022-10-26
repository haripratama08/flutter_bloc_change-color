import 'package:evaluasi_first_bloc/blocs/counterbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: BlocBuilder<CounterBloc, int>(
              builder: (context, state) {
                print(state);
                return Text(
                  "Counter $state",
                  style: TextStyle(
                      fontSize: 20 + state.toDouble(),
                      fontWeight: FontWeight.bold),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: IconButton(
                  onPressed: () {
                    counterBloc.add('add');
                  },
                  color: Colors.black,
                  icon: Icon(Icons.add),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: IconButton(
                  onPressed: () {
                    counterBloc.add('minus');
                  },
                  color: Colors.black,
                  icon: Icon(Icons.remove),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
