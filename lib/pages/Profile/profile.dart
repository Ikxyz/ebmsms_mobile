import 'package:edo_jobs_portal/models/user.dart';
import 'package:edo_jobs_portal/pages/newRegisterForm/new_register_form.dart';
import 'package:edo_jobs_portal/providers/auth.dart';
import 'package:edo_jobs_portal/widget/buttons/buttons.dart';
import 'package:edo_jobs_portal/widget/drawer/drawer.dart';
import 'package:edo_jobs_portal/widget/expandedform/expandedform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../global.dart';

class Profile extends ConsumerStatefulWidget {
  static const String route = "Profile";
  const Profile({Key? key}) : super(key: key);

  @override
  ConsumerState<Profile> createState() => _ProfileState();
}

class _ProfileState extends ConsumerState<Profile> {
  final double coverHeight = 80;

  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    // final top = coverHeight - profileHeight / 2.5;
    return Scaffold(
        drawer: const Drawer(
          child:   AppDrawer(),
        ),
        appBar: AppBar(
            elevation: 0,
            iconTheme: const  IconThemeData(color: Colors.white),
            flexibleSpace:  Container(
              decoration:  const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Color.fromRGBO(157, 204, 57, 1),
                    Color.fromRGBO(21, 203, 63, 1),
                  ],
                ),
              ),
            )),
        backgroundColor: const  Color.fromRGBO(246, 249, 255, 1),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildTop(ref.read(currentUser)!),
              buildContent(),
            ],
          ),
        ));
  }

  Widget buildContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 400,
            decoration: const  BoxDecoration(color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                const    Text(
                    'Link Bank Account',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const  SizedBox(
                    height: 20,
                  ),
                const    FormContainerEditing(
                    height: 40,
                    width: 300,
                    text: 'Account Number',
                  ),
                 const   SizedBox(
                    height: 20,
                  ),
               const     FormContainerEditing(
                    height: 40,
                    width: 300,
                    text: 'Bank',
                  ),
                 const   SizedBox(
                    height: 30,
                  ),
                  Buttons2(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        NewRegisterForm.route,
                      );
                    },
                    text: 'Link Account',
                    gradient: const  LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(157, 204, 57, 1),
                        Color.fromRGBO(21, 203, 63, 1),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Change Password',
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerEditing(
                    height: 40,
                    width: 300,
                    text: 'Old Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerEditing(
                    height: 40,
                    width: 300,
                    text: 'New Password',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const FormContainerEditing(
                    height: 40,
                    width: 300,
                    text: 'Confirm New Password',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Buttons2(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        NewRegisterForm.route,
                      );
                    },
                    text: 'Change Password',
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors:    [
                          Color.fromRGBO(157, 204, 57, 1),
                          Color.fromRGBO(21, 203, 63, 1),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget buildTop(User user) {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2.5;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
            top: top,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProfileImage(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${user.firstName} ${user.lastName}'.capitalize,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          user.email,
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 0.5)),
                        ),
                        const Text(
                          '',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color:   Color.fromRGBO(0, 0, 0, 0.5)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }

  Widget buildCoverImage() {
    return Container(
      width: double.infinity,
      height: coverHeight,
      decoration: const BoxDecoration(

          //  image: DecorationImage(
          //                   colorFilter: ColorFilter.mode(
          //           Color.fromRGBO(22, 203, 63, 0.3).withOpacity(0.7),
          //           BlendMode.softLight
          //          ),

          //    image: AssetImage('assets/fish.png'),
          //    fit: BoxFit.cover
          //    ),
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromRGBO(157, 204, 57, 1),
              Color.fromRGBO(21, 203, 63, 1),
            ],
          ),
          borderRadius: BorderRadiusDirectional.only(
              bottomEnd:   Radius.circular(20),
              bottomStart: Radius.circular(20))),
    );
  }

  Widget buildProfileImage() {
    return CircleAvatar(
      radius: profileHeight / 2.5,
      backgroundColor: Colors.green,
      backgroundImage: const AssetImage('assets/she.png'),
    );
  }
}
