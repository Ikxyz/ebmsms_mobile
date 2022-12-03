import "package:edo_jobs_portal/State/dashboard.dart";
import 'package:edo_jobs_portal/pages/Auth/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import "../global.dart";

class DashboardProvider  {
  @override
  final DashboardState state;

  DashboardProvider(this.state);

  ///* Show .Open Side Bar
  void showSideBar() {
    if (state.scaffoldKey.currentState == null) return;

    if (state.scaffoldKey.currentState!.isDrawerOpen == true) return;

    state.scaffoldKey.currentState!.openDrawer();
  }
}
