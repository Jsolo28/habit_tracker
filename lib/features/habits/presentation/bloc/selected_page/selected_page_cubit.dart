import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedPageCubit extends Cubit<int> {
  SelectedPageCubit() : super(0);

  void selectPage(int index) {
    emit(index);
  }
}
