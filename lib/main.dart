import 'package:counterapp/bloc/counter_bloc.dart';
import 'package:counterapp/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter app use Flutter Bloc',
      home: BlocProvider(
        create: (context) => CounterBloc(0),
        child: CounterPage(),
      ),
    );
  }
}
