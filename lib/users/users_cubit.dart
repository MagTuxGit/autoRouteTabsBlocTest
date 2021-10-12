import 'package:flutter_bloc/flutter_bloc.dart';

class UsersCubit extends Cubit<int> {
  UsersCubit() : super(0) {
    loadUsers();
  }

  void loadUsers() => emit(3);
  void increment() {
    if (state < 50) emit(state + 1);
  }
  void decrement() {
    if (state > 0) emit(state - 1);
  }
}
