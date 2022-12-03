 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widget/agent_info/agent_info.dart';
import '../../widget/drawer/drawer.dart';

class Management extends StatefulWidget {
  const Management({Key? key}) : super(key: key);

  @override
  State<Management> createState() => _ManagementState();
}

class _ManagementState extends State<Management> {
  bool valuefirst = false;
  String businessName = "";

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
          child: Container(
            width: 400,
            height: 600,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Color.fromRGBO(5, 82, 22, 0.85),
                              BlendMode.softLight),
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 40, 10, 0),
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
                                  'ID',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  """ First Name""",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  """SurName""",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  """Details""",
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
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              '01',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.4)),
                                            ),
                                            Text(
                                              'Johnson',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.4)),
                                            ),
                                            Text(
                                              'Ojo',
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Color.fromRGBO(
                                                      0, 0, 0, 0.4)),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (BuildContext) {
                                                      AlertDialog details =
                                                          AlertDialog(
                                                        actions: [
                                                          IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop(false);
                                                              },
                                                              icon: Icon(Icons
                                                                  .cancel)),
                                                          Container(
                                                            width: 400,
                                                            height: 560,
                                                            child:
                                                                SingleChildScrollView(
                                                              child: Column(
                                                                children: [
                                                                  Container(
                                                                    width: 70,
                                                                    height: 70,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color.fromRGBO(
                                                                            0,
                                                                            194,
                                                                            64,
                                                                            1),
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              50),
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/edo.png',
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  Center(
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        Text(
                                                                          'EDO STATE GOVERNMENT',
                                                                          style: TextStyle(
                                                                              color: Colors.green,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 15),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              5,
                                                                        ),
                                                                        Text(
                                                                          """MSME FUND""",
                                                                          style:
                                                                              TextStyle(fontSize: 13),
                                                                        ),
                                                                        Text(
                                                                          'APPLICATION MANAGEMENT SYSTEM',
                                                                          style:
                                                                              TextStyle(fontSize: 13),
                                                                        ),
                                                                        Text(
                                                                          'Funds Disbursement / Tracking',
                                                                          style:
                                                                              TextStyle(fontSize: 12),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 3,
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.fromLTRB(
                                                                            20,
                                                                            20,
                                                                            0,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              0,
                                                                              0,
                                                                              200,
                                                                              0),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                70,
                                                                            height:
                                                                                70,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(50),
                                                                              border: Border.all(color: Color.fromRGBO(196, 196, 196, 1), style: BorderStyle.solid, width: 6),
                                                                            ),
                                                                            child:
                                                                                CircleAvatar(
                                                                              backgroundImage: AssetImage('assets/she.png'),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              10,
                                                                        ),
                                                                        Initials(
                                                                          boldtext:
                                                                              'First Name:',
                                                                          lighttext:
                                                                              ' Ojowo',
                                                                        ),
                                                                        Initials(
                                                                          boldtext:
                                                                              'Last Name:',
                                                                          lighttext:
                                                                              ' Loladepo',
                                                                        ),
                                                                        Initials(
                                                                          boldtext:
                                                                              'Surame: ',
                                                                          lighttext:
                                                                              'Daniyeni',
                                                                        ),
                                                                        Padding(
                                                                          padding: const EdgeInsets.fromLTRB(
                                                                              0,
                                                                              0,
                                                                              20,
                                                                              0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: const EdgeInsets.fromLTRB(0, 20, 108, 0),
                                                                                child: Text(
                                                                                  'Personal Information',
                                                                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                                                                ),
                                                                              ),
                                                                              SizedBox(
                                                                                height: 10,
                                                                              ),
                                                                              PersonalUsed()
                                                                            ],
                                                                          ),
                                                                        )
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      );
                                                      return details;
                                                    });
                                                print('hi');
                                              },
                                              child: Container(
                                                width: 70,
                                                height: 35,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Color.fromRGBO(
                                                        78, 187, 103, 1)),
                                                child: Text(
                                                  'View',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
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
        ));
  }
}

class PersonalUsed extends StatelessWidget {
  const PersonalUsed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            PersonalInfo(
              subtitle: 'Johnson Umaruba ',
              title: 'Agent: ',
            ),
            SizedBox(
              height: 10,
            ),
            PersonalInfo(
              subtitle: '08011245875455',
              title: 'Tel. Phone: ',
            ),
            SizedBox(
              height: 10,
            ),
            PersonalInfo(
              subtitle: 'User',
              title: 'Account Type: ',
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(236, 236, 236, 1),
                  borderRadius: BorderRadiusDirectional.circular(10)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Verified', style: TextStyle(fontSize: 15)),
                    Icon(Icons.check)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            PersonalInfo(
              subtitle: 'Read | Create',
              title: 'Permission: ',
            ),
            SizedBox(
              height: 10,
            ),
            PersonalInfo(
              subtitle: 'Nov, 10th, 2021',
              title: 'Created: ',
            ),
          ],
        ),
      ),
    );
  }
}
