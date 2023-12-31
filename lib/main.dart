import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelappwithbloc/cubit/cubit/app_cubit_cubit.dart';
import 'package:travelappwithbloc/cubit/cubit/appcubitlogic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: BlocProvider<AppCubitCubit>(
          create: (context) => AppCubitCubit(),
          child: const AppCubitLogic(),
        ));
  }
}
