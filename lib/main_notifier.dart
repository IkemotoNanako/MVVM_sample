import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/main_state.dart';

final mainNotifierProvider =
    StateNotifierProvider<MainNotifer, MainState>(
  (ref) => MainNotifer(),
);

class MainNotifer extends StateNotifier<MainState> {
  MainNotifer() : super(const MainState());

  void addCount(int count) {
    state = state.copyWith(count:count+1);
  }
}