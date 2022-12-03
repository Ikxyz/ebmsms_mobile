// ignore_for_file: prefer_const_constructors

import 'package:edo_jobs_portal/widget/drawer/drawer.dart';
import 'package:edo_jobs_portal/widget/grants_container/grants_container.dart';
import 'package:flutter/material.dart';

class DashBoardHomePage extends StatefulWidget {
  static const String route = "admin/dashboard";
  const DashBoardHomePage({Key? key}) : super(key: key);

  @override
  _DashBoardHomePageState createState() => _DashBoardHomePageState();
}

class _DashBoardHomePageState extends State<DashBoardHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: AppDrawer(),
        ),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Color.fromRGBO(5, 82, 22, 0.85), BlendMode.softLight),
                  image: AssetImage('assets/OBJECTS.png'),
                  fit: BoxFit.cover,
                  opacity: 0.1),
            ),
          ),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        backgroundColor: Color.fromRGBO(246, 249, 255, 1),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Color.fromRGBO(5, 82, 22, 0.85), BlendMode.softLight),
                      image: AssetImage('assets/OBJECTS.png'),
                      fit: BoxFit.cover,
                      opacity: 0.1,
                    ),
                    borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello Eghosa!',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Saturday | 13th Nov, 2021',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2),
                            borderRadius: BorderRadius.circular(50)),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/she.png'),
                          radius: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 0),
                child: Column(
                  children: [
                    Container(
                      width: 400,
                      height: 150,
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Color.fromRGBO(5, 82, 22, 0.85),
                              BlendMode.softLight),
                          image: AssetImage('assets/OBJECTS.png'),
                          fit: BoxFit.cover,
                          opacity: 0.8,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            width: 150,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 126, 29, 0.7),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20))),
                            child: Text(
                              '18 LGA',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GrantsContainer(
                                amount: '1,447.00',
                                color: Color.fromRGBO(22, 203, 63, 1),
                                image: 'assets/check-money.png',
                                text: 'Completed Grants',
                              ),
                              GrantsContainer(
                                amount: '1,447.00',
                                color: Color.fromRGBO(255, 121, 209, 1),
                                image: 'assets/people.png',
                                text: 'Review Grants',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GrantsContainer(
                                amount: '1,447.00',
                                color: Color.fromRGBO(242, 131, 0, 1),
                                image: 'assets/pending.png',
                                text: 'Pending Grants',
                              ),
                              GrantsContainer(
                                amount: '1,447.00',
                                color: Color.fromRGBO(195, 21, 21, 1),
                                image: 'assets/decline.png',
                                text: 'Decline Grants',
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
