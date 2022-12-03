import "package:edo_jobs_portal/State/Splash.dart";
import "package:edo_jobs_portal/global.dart";
import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:edo_jobs_portal/models/user.dart';
import 'package:edo_jobs_portal/pages/Auth/login.dart';
import 'package:edo_jobs_portal/providers/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../helpers/utils.dart';
import 'context.dart';

final splashScreenProvider =
    StateProvider.autoDispose<SplashScreenProvider>((ref) {
  return SplashScreenProvider(ref.read);
});

abstract class _SlashScreenClass {
  Reader read;

  _SlashScreenClass(this.read);

  Future<void> init();
}

class SplashScreenProvider extends StateNotifier<SplashScreenState>
    implements _SlashScreenClass {
  @override
  Reader read;

  SplashScreenProvider(this.read) : super(SplashScreenState());

  @override
  Future<void> init() async {
    Log("SPLASH SCREEN INIT RUN");
    final context = read(contextProvider).context!;
    final store = await SharedPreferences.getInstance();

    final firstRun = store.getBool(SplashScreenState.localFirstRunKey) ?? true;

    if (firstRun) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(Login.route, (route) => false);
      return;
    }

    final isAuthenticated = read(isLoggedIn);

    if (isAuthenticated == false) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(Login.route, (route) => false);
    } else {
      final user = read(authProvider).credentials.data;
      _gotoDashboard(user!, context);
    }
  }

  void _gotoDashboard(User user, BuildContext context) {
    if (user.isAgent == false && user.isAdmin == false) {
      showSankBar("Sorry you're not authorized to use this app, contact Admin",
          context);
      return;
    }

    if (user.isAdmin) {
      Navigator.of(context)
          .pushNamedAndRemoveUntil(AdminDashboard.route, (route) => false);
      return;
    }
    if (user.roles.contains('create')) {
      Navigator.of(context).pushNamedAndRemoveUntil(
          AgentCreateDashboard.route, (route) => false);
      return;
    } else if (user.roles.contains('update')) {
      Navigator.of(context).pushNamedAndRemoveUntil(
          AgentVerifyDashboard.route, (route) => false);
      return;
    }
    showSankBar(
        "Sorry you're not authorized to use this app, contact Admin", context);
  }
}
