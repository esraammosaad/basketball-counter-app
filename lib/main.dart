import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'basketball points counter app/basketball.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(

      create: (BuildContext context) =>CounterCubit(),
      child:  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: PointsCounter(),
      ),
    );
  }
}
