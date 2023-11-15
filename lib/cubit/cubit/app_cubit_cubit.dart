import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:travelappwithbloc/models/data_model.dart';
import 'package:travelappwithbloc/services/data_services.dart';

part 'app_cubit_state.dart';

class AppCubitCubit extends Cubit<AppCubitState> {
  AppCubitCubit(this.data) : super(AppCubitInitial()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final palces;
  void getData() async {
    try {
      emit(LoadingState());
      palces = await data.getInfo();
      emit(LoadedState(palces));
    } catch (e) {}
  }
}
