import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sample/main_state.dart';

final mainNotifierProvider =
    StateNotifierProvider<MainNotifer, MainState>(
  (ref) => MainNotifer(ref),
);

class MainNotifer extends StateNotifier<MainState> {
  MainNotifer(this.ref) : super(const MainState());

  Ref ref;

  void addCount(int count) {
    state = state.copyWith(count:count+1);
  }
}