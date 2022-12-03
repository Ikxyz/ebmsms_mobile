import 'package:edo_jobs_portal/pages/List_of_applications/list_of_applications.dart';
import 'package:edo_jobs_portal/pages/Profile/profile.dart';
import 'package:edo_jobs_portal/pages/Verified_business/verified_business.dart';
import 'package:edo_jobs_portal/pages/businesslist/business-list.dart';
import 'package:edo_jobs_portal/pages/homepage/dashboard_homepage.dart';
import 'package:edo_jobs_portal/pages/homepage/homepage.dart';
import 'package:edo_jobs_portal/pages/local_governtment/local_government.dart';
import 'package:edo_jobs_portal/pages/management/management.dart';
import 'package:edo_jobs_portal/pages/newRegisterForm/new_register_form.dart';

import '../../global.dart';


class AdminDashboard extends StatefulWidget {
  static const String route = "Admin";
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<AdminDashboard> {
  int currentTab = 0;
  final List<Widget> _children = [
    DashBoardHomePage(),
    LocalGovernment(),

    Management(),
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
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      'assets/dashboard.png',
                      color: currentTab == 0
                          ? Color.fromRGBO(0, 194, 64, 1)
                          : Colors.grey,
                      width: 25,
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
                    Image.asset(
                      'assets/localgovt.png',
                      color: currentTab == 1
                          ? Color.fromRGBO(0, 194, 64, 1)
                          : Colors.grey,
                      width: 30,
                    )
                  ],
                ),
              ),

              // Right Tab bar icons

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
                    Image.asset(
                      'assets/management.png',
                      color: currentTab == 2
                          ? Color.fromRGBO(0, 194, 64, 1)
                          : Colors.grey,
                      width: 30,
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

                    Image.asset(
                      'assets/bell.png',
                      color: currentTab == 3
                          ? Color.fromRGBO(0, 194, 64, 1)
                          : Color.fromRGBO(0, 0, 0, 0.5),
                    )
                  ],
                ),
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
