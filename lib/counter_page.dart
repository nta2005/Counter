import 'package:counterapp/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = context.read<CounterBloc>();
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: BlocBuilder<CounterBloc, int>(
              bloc: counterBloc,
              builder: (context, counter) {
                //counter is new state
                return Column(
                  children: [
                    Container(
                      child: Text(
                        'Two action event here:',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(color: Colors.blue),
                      child: TextButton(
                        onPressed: () {
                          counterBloc.add(CounterEvent.increment);
                        },
                        child: Text(
                          'Increment +',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Result: $counter',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                    Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(color: Colors.red),
                      child: TextButton(
                        onPressed: () {
                          counterBloc.add(CounterEvent.decrement);
                        },
                        child: Text(
                          'Decrement -',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
