// ignore: file_names
// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

import '../owner_of_business/owner_of_business.dart';

class BusinessList extends StatefulWidget {
  static const String route = "business";

  BusinessList({Key? key}) : super(key: key);

  @override
  State<BusinessList> createState() => _BusinessListState();
}

class _BusinessListState extends State<BusinessList> {
  bool valuefirst = false;
  String businessName = "";

  @override
  Widget build(BuildContext context) {
    businessName = ModalRoute.of(context)?.settings.arguments as String? ?? "";

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 249, 255, 1),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Businesses in $businessName',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(35, 40, 35, 0),
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
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'Name',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Business',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Verification',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
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
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(BusinessOwner.route);
                            print('click me $index');
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
                                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                                  ),
                                  Text(
                                    'Fish Farmer',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(0, 0, 0, 0.4)),
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
                                      color: Color.fromRGBO(0, 0, 0, 0.4)),
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
    );
  }
}
