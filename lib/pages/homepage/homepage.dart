// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:edo_jobs_portal/pages/businesslist/business-list.dart';
import 'package:edo_jobs_portal/providers/auth.dart';
import 'package:edo_jobs_portal/widget/drawer/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../global.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key, this.tooltip}) : super(key: key);
  static const String route = "homepage";
  final tooltip;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  String msg = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: AppDrawer(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Color.fromRGBO(246, 249, 255, 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
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
                            'Hello ${ref.read(currentUser)?.firstName}!',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Saturday | 13th Nov, 2021',
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 13),
                          )
                        ],
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            ref.read(currentUser)?.profileUrl ?? ''),
                        radius: 40,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Positioned(
                            child: Image.asset('assets/mapp.png'),
                          ),
                          Positioned(
                            top: 190,
                            left: 40,
                            //  child: Tooltip(
                            //    enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Ovia South-West',
                            //  child: Icon(Icons.location_on, color: Colors.green,)

                            //   )
                            child: TooltipText(
                              tooltip: 'Ovia South-West',
                            ),
                          ),
                          Positioned(
                            top: 190,
                            left: 120,
                            child: TooltipText(
                              tooltip: 'Ovia North-East',
                            ),
                            // child: Tooltip(
                            //   preferBelow: false,
                            //  showDuration: const Duration(seconds: 20),
                            //   message: "Ovia North-East",
                            //   enableFeedback: true,
                            //   triggerMode: TooltipTriggerMode.tap,
                            //   child: Icon(Icons.location_on, color: Colors.blue,))
                          ),
                          Positioned(
                            top: 240,
                            left: 120,
                            child: TooltipText(
                              tooltip: 'Egor',
                            ),
                            //  child: Tooltip(
                            //      enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Egor',
                            //    child: Icon(Icons.location_on, color: Colors.yellow,))
                          ),
                          Positioned(
                            top: 280,
                            left: 100,
                            child: TooltipText(
                              tooltip: 'Egor',
                            ),
                            //  child: Tooltip(
                            //      enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Oredo',
                            //    child: Icon(Icons.location_on,color: Colors.white,))
                          ),
                          Positioned(
                            top: 280,
                            left: 140,
                            child: TooltipText(
                              tooltip: 'Ikpoba Okha',
                            ),
                            //  child: Tooltip(
                            //      enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Ikpoba Okha',
                            //    child: Icon(Icons.location_on, color: Colors.lime,))
                          ),
                          Positioned(
                            top: 300,
                            left: 180,
                            child: TooltipText(
                              tooltip: 'Orhionmwon',
                            ),
                            //  child: Tooltip(
                            //      enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Orhionmwon',
                            //    child: Icon(Icons.location_on,color: Colors.lightBlueAccent,))
                          ),
                          Positioned(
                            top: 220,
                            left: 180,
                            child: TooltipText(
                              tooltip: 'Uhunmwonde',
                            ),
                            //  child: Tooltip(
                            //     enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Uhunmwonde',
                            //    child: Icon(Icons.location_on, color: Colors.tealAccent,))
                          ),
                          Positioned(
                            top: 130,
                            left: 180,
                            child: TooltipText(
                              tooltip: 'Owan West',
                            ),
                            //  child:Tooltip(
                            //     enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //     message: 'Owan West',
                            //    child: Icon(Icons.location_on, color: Colors.white,))
                          ),
                          Positioned(
                            top: 170,
                            left: 230,
                            child: TooltipText(
                              tooltip: 'Esan West',
                            ),
                            //  child: Tooltip(
                            //    enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Esan West',
                            //    child: Icon(Icons.location_on, color: Colors.black,))
                          ),
                          Positioned(
                            top: 180,
                            left: 250,
                            child: TooltipText(
                              tooltip: 'Esan North-East',
                            ),
                            //  child: Tooltip(
                            //     enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Esan North-East',
                            //    child: Icon(Icons.location_on, color: Colors.lightGreenAccent,))
                          ),
                          Positioned(
                            top: 200,
                            left: 260,
                            child: TooltipText(
                              tooltip: 'Esan Central',
                            ),
                            //  child:Tooltip(
                            //    enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Esan Central',
                            //    child: Icon(Icons.location_on, color: Colors.yellow,))
                          ),
                          Positioned(
                            top: 230,
                            left: 250,
                            child: TooltipText(
                              tooltip: 'Igueben',
                            ),
                            //  child: Tooltip(
                            //     enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Igueben',
                            //    child: Icon(Icons.location_on, color: Colors.amber,))
                          ),
                          Positioned(
                            top: 210,
                            left: 300,
                            child: TooltipText(
                              tooltip: 'Esan South-East',
                            ),
                            //  child: Tooltip(
                            //    enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Esan South-East',
                            //    child: Icon(Icons.location_on, color: Colors.blue,))
                          ),
                          //   Positioned(
                          //  top: 150,
                          //  left: 300,
                          //  child: Tooltip(
                          //    message: '',
                          //    child: Icon(Icons.location_on, color: Colors.white,))),
                          Positioned(
                            top: 120,
                            left: 320,
                            child: TooltipText(
                              tooltip: 'Etsako Central',
                            ),
                            //  child: Tooltip(
                            //    enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Etsako Central',
                            //    child: Icon(Icons.location_on, color: Colors.teal,))
                          ),
                          Positioned(
                            top: 120,
                            left: 270,
                            child: TooltipText(
                              tooltip: 'Etsako West',
                            ),
                            //  child: Tooltip(
                            //    enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Etsako West',
                            //    child: Icon(Icons.location_on, color: Colors.lightGreenAccent,))
                          ),
                          Positioned(
                            top: 70,
                            left: 320,
                            child: TooltipText(
                              tooltip: 'Etsako East',
                            ),
                            //  child: Tooltip(
                            //    enableFeedback: true,
                            //      triggerMode: TooltipTriggerMode.tap,
                            //        preferBelow: false,
                            //     showDuration: const Duration(seconds: 20),
                            //    message: 'Etsako East',
                            //    child: Icon(Icons.location_on, color: Colors.red,))
                          ),
                          Positioned(
                            top: 40,
                            left: 220,
                            child: TooltipText(
                              tooltip: 'Akoko Edo',
                            ),
                        
                          ),

                          Positioned(
                            top: 90,
                            left: 220,
                            child: TooltipText(
                              tooltip: 'Owan East',
                            ),
                        
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          'Choose your LGA',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  ),
                ),
              ),

              // Griddy()
              // Image.asset('assets/map.png',
              // fit: BoxFit.cover,
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class TooltipText extends StatefulWidget {
  final String tooltip;

  TooltipText({
    Key? key,
    required this.tooltip,
  });

  @override
  State<TooltipText> createState() => _TooltipTextState();
}

class _TooltipTextState extends State<TooltipText> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (isClicked == true)
          InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushNamed(BusinessList.route, arguments: widget.tooltip);
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Container(
                    width: 100,
                    alignment: Alignment.center,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(widget.tooltip,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                        ))),
              )),
        InkWell(
            onTap: () {
              setState(() {
                isClicked = true;
              });
              Future.delayed(Duration(seconds: 2), () {
                setState(() {
                  isClicked = false;
                });
              });
            },
            child: Icon(
              Icons.location_on,
              color: Colors.greenAccent,
            ))
      ],
    );
  }
}
