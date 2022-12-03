// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:edo_jobs_portal/pages/List_of_applications/list_of_applications.dart';
import 'package:edo_jobs_portal/pages/Profile/profile.dart';
import 'package:edo_jobs_portal/pages/Auth/login.dart';
import 'package:edo_jobs_portal/providers/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../global.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 10, 0),
        child: ListView(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage(ref.read(currentUser)?.profileUrl ?? ''),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        '${ref.read(currentUser)?.firstName} ${ref.read(currentUser)?.lastName}',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 17)),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(Profile.route);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 140,
                        height: 30,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(238, 238, 238, 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'View Account',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 60, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(AgentCreateDashboard.route);
                    },
                    child: Container(
                      width: 270,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(244, 244, 244, 1)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.dashboard_rounded,
                              color: Color.fromRGBO(0, 194, 64, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Dashboard',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(ListOfApplication.route);
                    },
                    child: Container(
                      width: 270,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(244, 244, 244, 1)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.money,
                              color: Color.fromRGBO(0, 194, 64, 1)),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Application',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(0, 194, 64, 1),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      'assets/edo.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      """
MSME LOAN
PORTAL
                """,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(Login.route);
                      },
                      child: Container(
                        width: 150,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              //background color of box
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                blurRadius: 10.0, // soften the shadow
                                spreadRadius: 2.0, //extend the shadow
                                offset: Offset(
                                  5.0, // Move to right 10  horizontally
                                  5.0, // Move to bottom 10 Vertically
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Logout',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              SvgPicture.asset(
                                'assets/Union1.svg',
                                width: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
