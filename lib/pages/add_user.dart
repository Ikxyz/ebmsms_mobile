import 'package:edo_jobs_portal/constant/application.dart';
import 'package:edo_jobs_portal/constant/state.dart';
import 'package:edo_jobs_portal/global.dart';
import 'package:edo_jobs_portal/helpers/log.dart';
import 'package:edo_jobs_portal/providers/user_management.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../helpers/regex.dart';
import '../widget/buttons/buttons.dart';

final states = StateData.state;
final lgaAreas = StateData.lgaAreas("Edo");

class AddUser extends ConsumerWidget {
  static const String route = "add-user";
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final selectedState = ref.watch(
        userManagementProvider.select((value) => value.newUser.stateOfOrigin));
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BackButton(),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Create New User Account',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Fill in user correct details below',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Form(
                key: ref.read(userAddUserFormKeyProvider),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      validator: isNotNull,
                      onSaved: ref
                          .read(userManagementProvider.notifier)
                          .setFirstName,
                      decoration: const InputDecoration(
                          label: Text("First Name"),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon: Icon(CupertinoIcons.person_circle,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: isNotNull,
                      onSaved:
                          ref.read(userManagementProvider.notifier).setLastName,
                      decoration: const InputDecoration(
                          label: Text("Last Name"),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: isTel,
                      onSaved: ref.read(userManagementProvider.notifier).setTel,
                      decoration: const InputDecoration(
                          label: Text("Telephone"),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon: Icon(CupertinoIcons.phone_circle,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: isEmail,
                      onSaved:
                          ref.read(userManagementProvider.notifier).setEmail,
                      decoration: const InputDecoration(
                          label: Text("Email"),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon:
                              Icon(CupertinoIcons.mail, color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: isNotNull,
                      onSaved:
                          ref.read(userManagementProvider.notifier).setUsername,
                      decoration: const InputDecoration(
                          label: Text("Username"),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon: Icon(CupertinoIcons.person_alt,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                        validator: isNotNull,
                        decoration: const InputDecoration(
                            label: Text("Gender"),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        items: TGender.map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            )).toList(),
                        onChanged: ref
                            .read(userManagementProvider.notifier)
                            .setGender),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                        validator: isNotNull,
                        decoration: const InputDecoration(
                            label: Text("Business Sector"),
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            prefixIcon: Icon(CupertinoIcons.building_2_fill,
                                color: Colors.grey),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)))),
                        items: TBusinessSector.map((e) => DropdownMenuItem(
                              child: Text(e),
                              value: e,
                            )).toList(),
                        onChanged: ref
                            .read(userManagementProvider.notifier)
                            .setBusinessSector),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                      validator: isNotNull,
                      decoration: const InputDecoration(
                          label: Text("State Of Origin"),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon: Icon(CupertinoIcons.location_circle,
                              color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      items: states
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: ref
                          .read(userManagementProvider.notifier)
                          .setStateOfOrigin,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButtonFormField(
                      validator: isNotNull,
                      decoration: const InputDecoration(
                          label: Text("Local Government of Resident"),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          prefixIcon:
                              Icon(CupertinoIcons.map, color: Colors.grey),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                      items: lgaAreas
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onSaved: ref
                          .read(userManagementProvider.notifier)
                          .setLocalGovernment,
                      onChanged: ref
                          .read(userManagementProvider.notifier)
                          .setLocalGovernment,
                    ),
                    const SizedBox(
                      height: 20,
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
                    ref
                        .read(userManagementProvider.notifier)
                        .addUser(context)
                        .catchError((err) => Log.fromObject(err).show(context));
                    ;
                  },
                  loading: ref.watch(userManagementProvider
                      .select((value) => value.isLoading)),
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
