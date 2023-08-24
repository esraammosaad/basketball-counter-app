import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointsCounter extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          'Points Counter',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).counterA}',
                            style: const TextStyle(
                              fontSize: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).teamIncrement(counter: 1 , team: 'A');


                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.orangeAccent),
                            ),
                            child: const Text('ADD 1 Point'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).teamIncrement(counter: 2 , team: 'A');

                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.orangeAccent),

                            ),
                            child: const Text('ADD 2 Point'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {

                              BlocProvider.of<CounterCubit>(context).teamIncrement(counter: 3 , team: 'A');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.orangeAccent),
                            ),
                            child: const Text('ADD 3 Point'),
                          ),
                        ],
                      ),
                      Container(
                        width: 1,
                        height: 400,
                        color: Colors.grey,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).counterB}',
                            style: const TextStyle(
                              fontSize: 150, // fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).teamIncrement(counter: 1 , team: 'B');

                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.orangeAccent),
                            ),
                            child: const Text('ADD 1 Point'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {

                              BlocProvider.of<CounterCubit>(context).teamIncrement(counter: 2 , team: 'B');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.orangeAccent),
                            ),
                            child: const Text('ADD 2 Point'),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).teamIncrement(counter: 3 , team: 'B');
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.orangeAccent),
                            ),
                            child: const Text('ADD 3 Point'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {

                        BlocProvider.of<CounterCubit>(context).teamIncrement(counter: 0, team: 'reset');

                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.orangeAccent),
                      ),
                      child: const Text('Reset'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
