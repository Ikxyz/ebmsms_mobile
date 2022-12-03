import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../global.dart';

final utilProvider = StateProvider<Utils>((ref) {
  return Utils(UtilsState(), ref.read);
});

class Utils extends StateNotifier<UtilsState> implements UtilsClass {
  @override
  UtilsState state;
  @override
  Reader read;

  Utils(this.state, this.read) : super(UtilsState());

 
}

class UtilsState {
  BuildContext? context;

  UtilsState();
}

abstract class UtilsClass {
  UtilsState state;

  Reader read;

  UtilsClass(this.state, this.read);

}
