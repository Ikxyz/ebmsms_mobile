// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:edo_jobs_portal/pages/business_capture/business_capture.dart';
import 'package:edo_jobs_portal/widget/expandedform/expandedform.dart';

import '../../global.dart';

enum ApplicationType { loan, grant }

class Application extends StatefulWidget {
  static const String route = "register";
  final String title;
  final ApplicationType type;

  const Application({required this.title, required this.type, Key? key})
      : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final photos = <File>[];

  void openCamera() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => CameraCamera(
                  onFile: (file) {
                    photos.add(file);
                    Navigator.pop(context);
                    setState(() {});
                  },
                )));
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
              BackButton(),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "${widget.type.name.toString().toUpperCase()} Application"
                      .capitalize,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
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
                onTap: () {
                  Navigator.of(context).pushNamed(
                    BusinessCapture.route,
                  );
                },
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
