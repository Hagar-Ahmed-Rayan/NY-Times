import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:newyork_times/core/bloc_observer.dart';
import 'package:newyork_times/core/service_locator.dart';
import 'package:newyork_times/newyork_times/presentation/screens/newyork_times_screen.dart';

void main() {
  setupServiceLocator();

  Bloc.observer = MyBlocObserver();

  runApp(const NyTimesApp());
}

class NyTimesApp extends StatelessWidget {
  const NyTimesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: MostPopularScreen(),
    );
  }
}
