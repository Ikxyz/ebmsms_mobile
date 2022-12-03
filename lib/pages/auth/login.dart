import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:edo_jobs_portal/helpers/regex.dart';
import 'package:edo_jobs_portal/pages/homepage/dashboard_homepage.dart';
import 'package:edo_jobs_portal/providers/auth.dart';
import 'package:edo_jobs_portal/providers/context.dart';
import 'package:edo_jobs_portal/widget/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../global.dart';

class Login extends ConsumerStatefulWidget {
  static const String route = "/login";
  const Login({Key? key}) : super(key: key);

  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    Log("Rebuilding...").log();

    ref.listenOnce(contextProvider, (p, n) {
      ref.read(contextProvider).setContext(context);
    });

    return Scaffold(
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 130, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Form(
                key: ref.watch(loginFormProvider),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text('Username',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.normal)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: isNotNull,
                      onSaved: ref.read(authProvider.notifier).setUsername,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Password',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.normal)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: isNotNull,
                      onSaved: ref.read(authProvider.notifier).setPassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Button(
                  onPressed: () {
                    ref.read(authProvider.notifier).login().then((value) {
                      final user = ref.read(currentUser);

                      if (user == null) {
                        return Log("not user logged in").show(context);
                      }
                      if (user.isAdmin) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            AdminDashboard.route, (route) => false);
                      }
                      if (user.isAgent == false) {
                        return Log("you're not authorized to use this app")
                            .show(context);
                      }
                      if (user.roles.contains('create')) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            AgentCreateDashboard.route, (route) => false);
                      } else if (user.roles.contains('update')) {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            AgentVerifyDashboard.route, (route) => false);
                      } else {
                        return Log("you're not authorized to use this app")
                            .show(context);
                      }
                    }).catchError((err) => Log.fromObject(err).show(context));
                  },
                  loading: ref
                      .watch(authProvider.select((value) => value.isLoading)),
                  text: "Login",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
