// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../widget/expandedform/expandedform.dart';

class Register extends StatefulWidget {
  static const String route = "register";
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 249, 255, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 90, 25, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back)),
              SizedBox(
                height: 20,
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
                      'Contact Information',
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    children: [
                      Container(height: 300, child: const ExpandedForm())
                    ],
                  ),
                ),
              ),
              const SizedBox(
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
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    children: [
                      Container(height: 300, child: BusinessExpandedFormNew())
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
                      'Terms & Conditions',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    children: [
                      Container(height: 300, child: TermsAndConditions())
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
