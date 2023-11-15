import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelappwithbloc/cubit/cubit/app_cubit_cubit.dart';
import 'package:travelappwithbloc/pages/navpages/homepage.dart';
import 'package:travelappwithbloc/pages/welcome_page.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({super.key});

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AppCubitCubit, AppCubitState>(
      builder: (context, state) {
        if (state is WelcomeState) {
          return const WelcomePage();
        }
        if (state is LoadingState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is LoadedState) {
          return const Homepage();
        } else {
          return Container();
        }
      },
    ));
  }
}
