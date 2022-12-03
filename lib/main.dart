// ignore_for_file: prefer_const_constructors

import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/pages/Auth/login.dart';
import 'package:edo_jobs_portal/pages/add_user.dart';
import 'package:edo_jobs_portal/pages/businesslist/business-list.dart';
import 'package:edo_jobs_portal/pages/owner_of_business/owner_of_business.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'pages/Application/application.dart';
import 'pages/List_of_applications/list_of_applications.dart';
import 'pages/Profile/profile.dart';
import 'pages/business_capture/business_capture.dart';  
import 'pages/dashbaord/admin_dashboard.dart';
import 'pages/dashbaord/agent_create_dashboard.dart';
import 'pages/dashbaord/agent_verify_dashboard.dart';
import 'pages/grants/complete.dart';
import 'pages/grants/decline.dart';
import 'pages/grants/pending.dart';
import 'pages/grants/review.dart';
import 'pages/homepage/homepage.dart';
import 'pages/local_governtment/local_government.dart';
import 'pages/newRegisterForm/new_register_form.dart';
import 'pages/splashscreen/splashscreen.dart';
import 'pages/super_agent_specific_lga/specific_lga.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreen(),
      // onGenerateRoute: (route) {
      //   final data = route.arguments;
      //   if (route.name == Application.route) {
      //     if (data is Map<String, dynamic>) {
      //       final title = data['title'];
      //       final type = data['type'];
      //       return MaterialPageRoute(
      //           builder: (context) => Application(title: title, type: type));
      //     }
      //   }
      //     return MaterialPage(child: child);
      // },
      routes: {
        Login.route: (context) => Login(),
        HomePage.route: (context) => HomePage(),
        BusinessList.route: (context) => BusinessList(),
        BusinessOwner.route: (context) => BusinessOwner(),
        AddUser.route: (context) => AddUser(),
        AgentCreateDashboard.route: (context) => AgentCreateDashboard(),
        NewRegisterForm.route: (context) => NewRegisterForm(),
        ListOfApplication.route: (context) => ListOfApplication(),
        BusinessCapture.route: (context) => BusinessCapture(),
        Profile.route: (context) => Profile(),
        AgentVerifyDashboard.route: (context) => AgentVerifyDashboard(),
        AdminDashboard.route: (context) => AdminDashboard(),
        SpecificLga.route: (context) => SpecificLga(),
        LocalGovernment.route: (context) => LocalGovernment(),
        CompleteGrants.route: (context) => CompleteGrants(),
        ReviewGrants.route: (context) => ReviewGrants(),
        DelincedGrants.route: (context) => DelincedGrants(),
        PendingGrants.route: (context) => PendingGrants(),
      },
    );
  }
}
