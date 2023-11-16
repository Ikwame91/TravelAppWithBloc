import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:travelappwithbloc/utils/constants.dart';

part 'app_cubit_state.dart';

class AppCubitCubit extends Cubit<AppCubitState> {
  AppCubitCubit() : super(AppCubitInitial()) {
    emit(WelcomeState());
  }
  // final DataServices data;
  // late final palces;
  void getData() async {
    try {
      emit(LoadingState());
      emit(LoadedState());
      // emit(LosadedState(palces));
    } catch (e) {}
  }

  void getDetail() async {
    try {
      emit(DetailState(discoverImage));
      // emit(LosadedState(palces));
    } catch (e) {}
  }
}
