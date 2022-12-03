// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:edo_jobs_portal/State/Splash.dart';
import 'package:edo_jobs_portal/providers/Splash.dart';
import 'package:edo_jobs_portal/providers/context.dart';
import 'package:edo_jobs_portal/providers/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../global.dart';

class SplashScreen extends ConsumerWidget {
  static const String route = "/splash";
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(contextProvider).setContext(context);
    ref.watch(splashScreenProvider).init();

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/pattern1.png')),
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(0, 223, 51, 1),
                Color.fromRGBO(70, 167, 0, 1),
              ],
              // stops: [0.0, 1.0],
              // begin: FractionalOffset.topCenter,
              // end: FractionalOffset.bottomCenter,
              // tileMode: TileMode.repeated
            )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset('assets/edo.png'),
              ),
            const  SizedBox(
                height: 20,
              ),
             const Text(
                'MSME LOAN PORTAL',
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
