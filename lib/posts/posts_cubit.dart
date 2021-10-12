import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<int> {
  PostsCubit() : super(0) {
    loadPosts();
  }

  void loadPosts() => emit(3);
  void increment() {
    if (state < 50) emit(state + 1);
  }
  void decrement() {
    if (state > 0) emit(state - 1);
  }
}
