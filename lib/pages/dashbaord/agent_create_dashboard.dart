
import 'package:edo_jobs_portal/pages/add_user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widget/buttons/buttons.dart'; 
import '../Application/application.dart';
import '../List_of_applications/list_of_applications.dart';
import '../Profile/profile.dart';
import '../Verified_business/verified_business.dart';
import '../form_cards_page/form_cards_page.dart';
import '../homepage/homepage.dart';

class AgentCreateDashboard extends StatefulWidget {
  static const String route = "Register";
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<AgentCreateDashboard> {
  int currentTab = 0;
  final List<Widget> _children = [
    const HomePage(),
    const ListOfApplication(),

    const VerifiedBusiness(),
    const Profile(),
    // HomeView(),
    // DepositView(),
    // ProfileView(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[currentTab],
      floatingActionButton: Container(
        height: 70.0,
        width: 70.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              // onTabTapped(2);
              showDialog(
                  context: context,
                  builder: (BuildContext) {
                    AlertDialog dialog = AlertDialog(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      actions: [
                        Container(
                          width: 300,
                          // height: 130,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Button(
                                  color: Colors.red,
                                  onPressed: () {
                                    Navigator.of(context).pushNamed(
                                      AddUser.route,
                                    );
                                  },
                                  text: 'Register New User',
                                ),
                                const SizedBox(height: 20),
                                Button(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Application(
                                                  title: "Grant Application",
                                                  type: ApplicationType.grant,
                                                )));
                                  },
                                  text: 'Grant Application',
                                ),
                                const SizedBox(height: 20),
                                Button(
                                  color: Colors.white,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Application(
                                                  title: "Loan Application",
                                                  type: ApplicationType.loan,
                                                )));
                                  },
                                  text: 'Loan Application',
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                    return dialog;
                  });
            },
            tooltip: "Add Savings",
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
            elevation: 4.0,
            backgroundColor: const Color.fromRGBO(0, 194, 64, 1),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 70,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            const HomePage(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //   Icons.home,
                        //   size: 25,
                        //   color: currentTab == 0 ? Colors.blue : Colors.grey,
                        // ),
                        Image.asset(
                          'assets/location.png',
                          color: currentTab == 0
                              ? const Color.fromRGBO(0, 194, 64, 1)
                              : Colors.grey,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 70,
                    onPressed: () {
                      setState(() {
                        currentScreen = Container(
                          child: const Center(
                            child: const Text('mama'),
                          ),
                        ); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //   Icons.people,
                        //   size: 25,
                        //   color: currentTab == 1 ? Colors.blue : Colors.grey,
                        // ),
                        SvgPicture.asset(
                          'assets/people.svg',
                          color: currentTab == 1
                              ? const Color.fromRGBO(0, 194, 64, 1)
                              : Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 70,
                    onPressed: () {
                      setState(() {
                        currentScreen = Container(
                          child: const Center(
                            child: Text('tab2'),
                          ),
                        ); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //  Icons.file_copy,
                        //  size: 25,
                        //   color: currentTab == 2 ? Colors.blue : Colors.grey,
                        // ),
                        SvgPicture.asset(
                          'assets/task.svg',
                          color: currentTab == 2
                              ? const Color.fromRGBO(0, 194, 64, 1)
                              : Colors.grey,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 70,
                    onPressed: () {
                      setState(() {
                        currentScreen = Container(
                          child: const Center(
                            child: const Text('tab2'),
                          ),
                        ); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        // Icon(
                        //  Icons.notifications,
                        //  size: 25,
                        //   color: currentTab == 3 ? Colors.blue : Colors.grey,
                        // ),

                        SvgPicture.asset(
                          'assets/bell.svg',
                          color: currentTab == 3
                              ? const Color.fromRGBO(0, 194, 64, 1)
                              : Colors.grey,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;

  //   });
  // }
}
