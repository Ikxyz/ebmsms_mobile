// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart'; 
import 'package:flutter/material.dart';

import '../../widget/bar_chart/bar_chart.dart';
import '../../widget/drawer/drawer.dart';
import '../../widget/pie_chart/pie_chart.dart';
import '../owner_of_business/owner_of_business.dart';

class ListOfApplication extends StatefulWidget {
  static const String route = "Verified";
  const ListOfApplication({Key? key}) : super(key: key);

  @override
  _VerifiedBusinessState createState() => _VerifiedBusinessState();
}

class _VerifiedBusinessState extends State<ListOfApplication> {
  bool valuefirst = false;
  String businessName = "";
  int _currentIndex = 0;
  List cardList = [
    Charty(),
    Item2(),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'List of Businesses',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(246, 249, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Container(
            width: 400,
            height: 600,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CarouselSlider(
                    items: cardList.map((card) {
                      return Builder(builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.30,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: card,
                          ),
                        );
                      });
                    }).toList(),
                    options: CarouselOptions(
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: false),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 40, 20, 0),
                    child: Container(
                      width: 400,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        color: Color.fromRGBO(252, 252, 252, 1),
                        boxShadow: const [
                          //background color of box
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            blurRadius: 10.0, // soften the shadow
                            spreadRadius: 1.0, //extend the shadow
                            offset: Offset(
                              3.0, // Move to right 10  horizontally
                              3.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  'Name',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Business',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Verification',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 420,
                            child: ListView.builder(
                                itemCount: 8,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 10, 20, 0),
                                    child: GestureDetector(
                                      onTap: () {
                                        print('click me $index kkkkk');
                                        Navigator.of(context)
                                            .pushNamed(BusinessOwner.route);
                                        print('click me $index kkkkk');
                                      },
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                'Johnson Ojo',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.4)),
                                              ),
                                              Text(
                                                'Fish Farmer',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 0.4)),
                                              ),
                                              Checkbox(
                                                activeColor: Colors.green,
                                                value: valuefirst,
                                                onChanged: (bool? value) {
                                                  setState(() {
                                                    valuefirst = value!;
                                                  });
                                                },
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1,
                                          ),
                                          Container(
                                            width: 270,
                                            decoration: BoxDecoration(
                                                border: Border(
                                              bottom: BorderSide(
                                                  width: 0.2,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.4)),
                                            )),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
