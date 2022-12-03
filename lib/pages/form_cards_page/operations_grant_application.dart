// ignore_for_file: prefer_const_constructors
 
import 'package:flutter/material.dart';

import '../../widget/buttons/buttons.dart';
import '../../widget/expandedform/expandedform.dart';
import 'form_cards_page.dart';
import 'try.dart';

class OperationGrantApplicationForm extends StatefulWidget {
  static const String route = 'OperationGrantApplicationForm';
  const OperationGrantApplicationForm({Key? key}) : super(key: key);

  @override
  State<OperationGrantApplicationForm> createState() =>
      _OperationGrantApplicationFormState();
}

class _OperationGrantApplicationFormState
    extends State<OperationGrantApplicationForm> {
  TextEditingController businessName = TextEditingController();
  TextEditingController monthlySales = TextEditingController();
  TextEditingController yearOfBusiness = TextEditingController();
    TextEditingController phoneNumberOfHeadOfBusiness = TextEditingController();
      TextEditingController staffStrength = TextEditingController();
        TextEditingController firstName = TextEditingController();
          TextEditingController lastName = TextEditingController();
            TextEditingController email = TextEditingController();
              TextEditingController dateOfBirthOfHeadOfBusiness = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Edo State NG-CARES - DLI 3.2: Operations Grant Application',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'COMPLETE THE APPLICATION FORM BELOW',
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'BUSINESS NAME',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('WHAT KIND OF BUSINESS?'),
                              SizedBox(
                                height: 5,
                              ),
                              KindOfBusiness(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text:
                              'HOW MUCH SALES (IN NAIRA) DO YOU CURRENTLY MAKE MONTHLY?',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'WHAT DATE/YEAR DID YOU OPEN YOUR BUSINESS?',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'PHONE NUMBER OF HEAD OF BUSINESS',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'NUMBER OF EMPLOYEES',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'FIRST NAME OF HEAD OF BUSINESS',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'LAST NAME OF HEAD OF BUSINESS',
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'EMAIL OF HEAD OF BUSINESS',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainerEditing(
                          height: 40,
                          width: 400,
                          text: 'DATE OF BIRTH OF HEAD OF BUSINESS',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('GENDER OF HEAD OF BUSINESS'),
                              SizedBox(
                                height: 5,
                              ),
                              GenderOfOwner(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        FormContainer(
                          height: 40,
                          width: 400,
                          text: 'STATE OF BUSINESS',
                          child: 'Edo State',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('LGA OF BUSINESS'),
                              SizedBox(
                                height: 5,
                              ),
                              LocalGovernmentList(),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                width: 120,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
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
                                                    BorderRadiusDirectional
                                                        .circular(20)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 10, 10, 0),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Please do you want to send all this information',
                                                    style:
                                                        TextStyle(fontSize: 17),
                                                  ),
                                                  Buttons2(
                                                    color: Colors.red,
                                                    onPressed: () {
                                                      showDialog(
                                                          barrierDismissible:
                                                              false,
                                                          context: context,
                                                          builder:
                                                              (BuildContext) {
                                                            Future.delayed(
                                                                Duration(
                                                                    seconds: 3),
                                                                () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pushNamed(
                                                                      FormCardsPage
                                                                          .route);
                                                            });
                                                            AlertDialog
                                                                approve =
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
                                                                          BorderRadiusDirectional.circular(
                                                                              20)),
                                                                  child: Center(
                                                                      child:
                                                                          Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      CircularProgressIndicator(),
                                                                      SizedBox(
                                                                        height:
                                                                            5,
                                                                      ),
                                                                      Text(
                                                                        'Thank you. Your response has been submitted to Edo State NG-CARES.',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black,
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
                                                    text: 'Yes I Do',
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.bottomLeft,
                                                      colors: [
                                                        Color.fromRGBO(
                                                            157, 204, 57, 1),
                                                        Color.fromRGBO(
                                                            21, 203, 63, 1),
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
                                  'Submit',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
