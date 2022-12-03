 
import 'package:flutter/material.dart';

import '../../widget/drawer/drawer.dart';
import '../super_agent_specific_lga/specific_lga.dart';

class LocalGovernment extends StatefulWidget {
  static const String route = "LocalGovernment";
  const LocalGovernment({Key? key}) : super(key: key);

  @override
  _LocalGovernmentState createState() => _LocalGovernmentState();
}

class _LocalGovernmentState extends State<LocalGovernment> {
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
                      ),
                    ],
                  ),
                ),
              ),
              Column(
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
                      ),
                      Positioned(
                        top: 240,
                        left: 120,
                        child: TooltipText(
                          tooltip: 'Egor',
                        ),
                      ),
                      Positioned(
                        top: 280,
                        left: 100,
                        child: TooltipText(
                          tooltip: 'Egor',
                        ),
                      ),
                      Positioned(
                        top: 280,
                        left: 140,
                        child: TooltipText(
                          tooltip: 'Ikpoba Okha',
                        ),
                      ),
                      Positioned(
                        top: 300,
                        left: 180,
                        child: TooltipText(
                          tooltip: 'Orhionmwon',
                        ),
                      ),
                      Positioned(
                        top: 220,
                        left: 180,
                        child: TooltipText(
                          tooltip: 'Uhunmwonde',
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 180,
                        child: TooltipText(
                          tooltip: 'Owan West',
                        ),
                      ),
                      Positioned(
                        top: 170,
                        left: 230,
                        child: TooltipText(
                          tooltip: 'Esan West',
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 250,
                        child: TooltipText(
                          tooltip: 'Esan North-East',
                        ),
                      ),
                      Positioned(
                        top: 200,
                        left: 260,
                        child: TooltipText(
                          tooltip: 'Esan Central',
                        ),
                      ),
                      Positioned(
                        top: 230,
                        left: 250,
                        child: TooltipText(
                          tooltip: 'Igueben',
                        ),
                      ),
                      Positioned(
                        top: 210,
                        left: 300,
                        child: TooltipText(
                          tooltip: 'Esan South-East',
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 320,
                        child: TooltipText(
                          tooltip: 'Etsako Central',
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 270,
                        child: TooltipText(
                          tooltip: 'Etsako West',
                        ),
                      ),
                      Positioned(
                        top: 70,
                        left: 320,
                        child: TooltipText(
                          tooltip: 'Etsako East',
                        ),
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ],
          ),
        ));
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
                    .pushNamed(SpecificLga.route, arguments: widget.tooltip);
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
