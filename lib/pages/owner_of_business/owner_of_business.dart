// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'dart:io';
 
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../../widget/buttons/buttons.dart';
import '../../widget/drawer/drawer.dart';
import '../../widget/expandedform/expandedform.dart';
import '../List_of_applications/list_of_applications.dart';

class BusinessOwner extends StatefulWidget {
  static const String route = "business-owner";
  const BusinessOwner({Key? key}) : super(key: key);

  @override
  State<BusinessOwner> createState() => _BusinessOwnerState();
}

class _BusinessOwnerState extends State<BusinessOwner> {
  final double coverHeight = 190;

  final double profileHeight = 144;
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final top = coverHeight - profileHeight / 2.5;
    return Scaffold(
        drawer: Drawer(
          child: AppDrawer(),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(157, 204, 57, 1),
                  Color.fromRGBO(21, 203, 63, 1),
                ],
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Color.fromRGBO(246, 249, 255, 1),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildTop(),
              buildContent(),
            ],
          ),
        ));
  }

  Widget buildContent() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 40, 25, 0),
      child: Container(
        child: Column(
          children: [
            Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      //background color of box
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.01),
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 10  horizontally
                          5.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: ExpansionTile(
                  textColor: Colors.black,
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  title: Text(
                    'Contact Information',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  children: [Container(height: 300, child: ExpandedForm())],
                ),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      //background color of box
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.01),
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 10  horizontally
                          5.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: ExpansionTile(
                  textColor: Colors.black,
                  iconColor: Colors.black,
                  collapsedIconColor: Colors.black,
                  title: Text(
                    'Business Information',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                  children: [
                    Container(
                        height: 300, child: BusinessExpandedFormRegister())
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => pickImage(),
              child: Container(
                width: 400,
                height: 60,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      //background color of box
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.01),
                        blurRadius: 10.0, // soften the shadow
                        spreadRadius: 2.0, //extend the shadow
                        offset: Offset(
                          5.0, // Move to right 10  horizontally
                          5.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text('Business Capture',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext) {
                            AlertDialog dialog = AlertDialog(
                              backgroundColor: Colors.white,
                              elevation: 0,
                              actions: [
                                Container(
                                  width: 300,
                                  height: 130,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 10, 10, 0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Please Confirm Approval',
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Buttons2(
                                          color: Colors.red,
                                          onPressed: () {
                                            showDialog(
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (BuildContext) {
                                                  Future.delayed(
                                                      Duration(seconds: 3), () {
                                                    Navigator.of(context)
                                                        .pushNamed(
                                                            ListOfApplication
                                                                .route);
                                                  });
                                                  AlertDialog approve =
                                                      AlertDialog(
                                                    backgroundColor:
                                                        Colors.white,
                                                    elevation: 0,
                                                    actions: [
                                                      Container(
                                                        width: 300,
                                                        height: 130,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadiusDirectional
                                                                    .circular(
                                                                        20)),
                                                        child: Center(
                                                            child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CircularProgressIndicator(),
                                                            SizedBox(
                                                              height: 5,
                                                            ),
                                                            Text(
                                                              'Approved',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 20),
                                                            ),
                                                          ],
                                                        )),
                                                      )
                                                    ],
                                                  );
                                                  return approve;
                                                });
                                          },
                                          text: 'Confirm',
                                          gradient: LinearGradient(
                                            begin: Alignment.topRight,
                                            end: Alignment.bottomLeft,
                                            colors: [
                                              Color.fromRGBO(157, 204, 57, 1),
                                              Color.fromRGBO(21, 203, 63, 1),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                            return dialog;
                          });
                    },
                    child: Container(
                      width: 120,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Verified Ok',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (BuildContext) {
                            Future.delayed(Duration(seconds: 3), () {
                              Navigator.of(context)
                                  .pushNamed(ListOfApplication.route);
                            });
                            AlertDialog disapprove = AlertDialog(
                              backgroundColor: Colors.transparent,
                              elevation: 0,
                              actions: [
                                Center(
                                    child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CircularProgressIndicator(
                                      color: Colors.red,
                                    ),
                                  ],
                                ))
                              ],
                            );
                            return disapprove;
                          });
                    },
                    child: Container(
                      width: 125,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Verified Not Ok',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //  GestureDetector(
            //    onTap: (){

            //    },
            //    child: Container(
            //            width: 120,
            //             height: 40,
            //             alignment: Alignment.center,
            //            decoration: BoxDecoration(
            //              color: Colors.green,
            //               borderRadius: BorderRadius.circular(10)
            //            ),
            //             child: Text('Capture Business',
            //             style: TextStyle(
            //               color: Colors.white,
            //               fontWeight: FontWeight.bold
            //               ),
            //             ),
            //          ),
            //  )
          ],
        ),
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2.5;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        Container(
            margin: EdgeInsets.only(bottom: bottom), child: buildCoverImage()),
        Positioned(
            top: top,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildProfileImage(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 60, 0, 0),
                    child: Column(
                      children: [
                        Text(
                          'Johnson Ojo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          'Fish Farmer',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Color.fromRGBO(0, 0, 0, 0.5)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }

  Widget buildCoverImage() {
    return image != null
        ? Container(
            width: double.infinity,
            height: coverHeight,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(22, 203, 63, 0.3).withOpacity(0.7),
                        BlendMode.softLight),
                    image: FileImage(image!),
                    fit: BoxFit.cover),
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(20),
                    bottomStart: Radius.circular(20))),
          )
        :
        // image != null ? Image.file(image!,
        //  width: double.infinity,
        //   height: coverHeight,
        // ):
        Container(
            width: double.infinity,
            height: coverHeight,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Color.fromRGBO(22, 203, 63, 0.3).withOpacity(0.7),
                        BlendMode.softLight),
                    image: AssetImage('assets/fish.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadiusDirectional.only(
                    bottomEnd: Radius.circular(20),
                    bottomStart: Radius.circular(20))),
          );
  }

  Widget buildProfileImage() {
    return CircleAvatar(
      radius: profileHeight / 2.5,
      backgroundColor: Colors.green,
      backgroundImage: AssetImage('assets/she.png'),
    );
  }
}
