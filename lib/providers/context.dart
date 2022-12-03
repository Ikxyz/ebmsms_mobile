import 'package:edo_jobs_portal/global.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contextProvider = StateProvider<ContextProvider>((ref) {
  return ContextProvider();
});

abstract class _ContextClass {
  BuildContext? context;

  void setContext(BuildContext _context);
}

class ContextProvider extends StateNotifier<BuildContext?>
    implements _ContextClass {
  @override
  BuildContext? context;

  ContextProvider() : super(null);

  @override
  void setContext(BuildContext _context) {
    context = _context;
  }
}
