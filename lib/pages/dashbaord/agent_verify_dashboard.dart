import 'package:edo_jobs_portal/pages/List_of_applications/list_of_applications.dart';
import 'package:edo_jobs_portal/pages/Profile/profile.dart';
import 'package:edo_jobs_portal/pages/Verified_business/verified_business.dart';
import 'package:edo_jobs_portal/pages/businesslist/business-list.dart';
import 'package:edo_jobs_portal/pages/homepage/homepage.dart';
import 'package:edo_jobs_portal/pages/newRegisterForm/new_register_form.dart'; 
import 'package:edo_jobs_portal/widget/buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AgentVerifyDashboard extends StatefulWidget {
  static const String route = "Verify";
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<AgentVerifyDashboard> {
  int currentTab = 0;
  final List<Widget> _children = [
    HomePage(),
    ListOfApplication(),

    VerifiedBusiness(),
    Profile(),
    // HomeView(),
    // DepositView(),
    // ProfileView(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();
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
              onTabTapped(2);
            },
            tooltip: "Add Savings",
            child: Icon(
              Icons.dashboard_rounded,
              color: Colors.white,
              size: 30,
            ),
            elevation: 4.0,
            backgroundColor: Color.fromRGBO(0, 194, 64, 1),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
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
                            HomePage(); // if user taps on this dashboard tab will be active
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
                              ? Color.fromRGBO(0, 194, 64, 1)
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
                          child: Center(
                            child: Text('mama'),
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
                              ? Color.fromRGBO(0, 194, 64, 1)
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
                          child: Center(
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
                              ? Color.fromRGBO(0, 194, 64, 1)
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
                          child: Center(
                            child: Text('tab2'),
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
                              ? Color.fromRGBO(0, 194, 64, 1)
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

  void onTabTapped(int index) {
    setState(() {
      currentTab = index;
    });
  }
}
