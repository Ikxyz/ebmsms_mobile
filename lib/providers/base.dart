import "dart:async";

import 'package:edo_jobs_portal/helpers/log.dart';

import "../State/base.dart";
import "../global.dart";

typedef SetState<T> = T Function();

abstract class BaseProvider<T> with ChangeNotifier {
  BaseState state = BaseState();

  ///* Update  State BuildContext
  ///
  setContext(BuildContext context) {
    state.context = context;
  }

  /// Show Snackbar form any screen
  ///
  showSankBar(String message) {
    if (state.context == null) {
      return;
    }
    ScaffoldMessenger.of(state.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  /// Update isLoading progress state
  ///
  void setLoading(bool? arg) {
    state.isLoading = arg ?? !state.isLoading;
    notifyListeners();
  }

  void setState(SetState<T> fn) {
    Future.sync(fn).then((newState) {
      try {
        state = newState as dynamic;
        notifyListeners();
      } catch (e) {}
    });
  }

  /// Dispose
  ///
  void dispose() {
    super.dispose();
  }
}
