// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:basketball_app/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/Counter_cubit.dart';

void main() {
  runApp(BaskeballApp());
}

class BaskeballApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        //
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text('Points Counter'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).Team_A_counter}',
                          style: TextStyle(
                            fontSize: 200,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamXIncrement(
                              team: 'A',
                              IcrementNum: 1,
                            );
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamXIncrement(
                              team: 'A',
                              IcrementNum: 2,
                            );
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamXIncrement(
                              team: 'A',
                              IcrementNum: 3,
                            );
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: VerticalDivider(
                      indent: 40,
                      endIndent: 25,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).Team_B_counter}',
                          style: TextStyle(
                            fontSize: 200,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamXIncrement(
                              team: 'B',
                              IcrementNum: 1,
                            );
                          },
                          child: Text(
                            'Add 1 Point',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamXIncrement(
                              team: 'B',
                              IcrementNum: 2,
                            );
                          },
                          child: Text(
                            'Add 2 Point',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: Size(130, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .TeamXIncrement(
                              team: 'B',
                              IcrementNum: 3,
                            );
                          },
                          child: Text(
                            'Add 3 Point',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                      ],

                      //team B coulmn
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(130, 50),
                ),
                onPressed: () {},
                child: Text(
                  'Reset',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
