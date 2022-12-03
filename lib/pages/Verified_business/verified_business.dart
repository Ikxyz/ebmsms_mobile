import 'package:carousel_slider/carousel_slider.dart';
import 'package:edo_jobs_portal/pages/owner_of_business/owner_of_business.dart';
import 'package:edo_jobs_portal/widget/bar_chart/bar_chart.dart';
import 'package:edo_jobs_portal/widget/drawer/drawer.dart';
import 'package:edo_jobs_portal/widget/pie_chart/pie_chart.dart';
import 'package:flutter/material.dart';

class VerifiedBusiness extends StatefulWidget {
  const VerifiedBusiness({Key? key}) : super(key: key);

  @override
  _VerifiedBusinessState createState() => _VerifiedBusinessState();
}

class _VerifiedBusinessState extends State<VerifiedBusiness> {
  bool valueFirst = false;
  String businessName = "";
  // int _currentIndex = 0;
  List cardList = [
    Charty(),
    const Item2(),
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
      drawer: const Drawer(child: const AppDrawer()),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      backgroundColor: const Color.fromRGBO(246, 249, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Row(
                  children:const [
                      Icon(Icons.arrow_back),
                      SizedBox(
                      width: 30,
                    ),
                      Text(
                      """List Of Verified Application""",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
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
                padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
                child: Container(
                  width: 400,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10),
                    color: const Color.fromRGBO(252, 252, 252, 1),
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
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Business',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Verification',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
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
                                padding:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed(BusinessOwner.route);
                                    debugPrint('click me $index');
                                  },
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children:const [
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
                                            Icon(Icons.check)
                                        ],
                                      ),
                                     const  SizedBox(
                                        height: 1,
                                      ),
                                      Container(
                                        width: 270,
                                        decoration:const BoxDecoration(
                                            border: Border(
                                          bottom: BorderSide(
                                              width: 0.2,
                                              color:
                                                  Color.fromRGBO(0, 0, 0, 0.4)),
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
             const  SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
