// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

 
import 'package:flutter/material.dart';

import '../../global.dart';
import '../../widget/drawer/drawer.dart';
import '../../widget/grants_container/grants_container.dart';
import '../grants/complete.dart';
import '../grants/decline.dart';
import '../grants/pending.dart';
import '../grants/review.dart';

class SpecificLga extends StatefulWidget {
  static const String route = "Specificlga";
  const SpecificLga({Key? key}) : super(key: key);

  @override
  _SpecificLgaState createState() => _SpecificLgaState();
}

class _SpecificLgaState extends State<SpecificLga> {
  String specificlga = "";
  @override
  Widget build(BuildContext context) {
    specificlga = ModalRoute.of(context)?.settings.arguments as String? ?? "";
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
                      IconButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed(AdminDashboard.route);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
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
                            width: 220,
                            height: 60,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 126, 29, 0.7),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20))),
                            child: Text(
                              '$specificlga',
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
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    CompleteGrants.route,
                                  );
                                },
                                child: GrantsContainer(
                                  amount: '1,447.00',
                                  color: Color.fromRGBO(22, 203, 63, 1),
                                  image: 'assets/check-money.png',
                                  text: 'Completed Grants',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(ReviewGrants.route);
                                },
                                child: GrantsContainer(
                                  amount: '1,447.00',
                                  color: Color.fromRGBO(255, 121, 209, 1),
                                  image: 'assets/people.png',
                                  text: 'Review Grants',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(PendingGrants.route);
                                },
                                child: GrantsContainer(
                                  amount: '1,447.00',
                                  color: Color.fromRGBO(242, 131, 0, 1),
                                  image: 'assets/pending.png',
                                  text: 'Pending Grants',
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(DelincedGrants.route);
                                },
                                child: GrantsContainer(
                                  amount: '1,447.00',
                                  color: Color.fromRGBO(195, 21, 21, 1),
                                  image: 'assets/decline.png',
                                  text: 'Decline Grants',
                                ),
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
