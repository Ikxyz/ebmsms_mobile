// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

 
import 'package:flutter/material.dart';

import '../../widget/form_cards/form_cards.dart';
import 'IT_application.dart';
import 'grant_application.dart';
import 'operations_grant_application.dart';
String? grantType1;
String? grantType2;
String? grantType3;
class FormCardsPage extends StatefulWidget {
  static const String route = "FormCardsPage";
   FormCardsPage({Key? key}) : super(key: key);

  @override
  State<FormCardsPage> createState() => _FormCardsPageState();
}

class _FormCardsPageState extends State<FormCardsPage> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back)),
                formCards(
                    "assets/save_money.png",
                    "DLI 3.1: Credit Grant",
                    "If your business borrowed money after June 15, 2020, and you need financial support to pay the loan.",
                    GestureDetector(
                        onTap: () async{
                          setState(() {
                            grantType1 = "DLI 3.1";
                          });
                          Navigator.of(context)
                              .pushNamed(GrantApplicationForm.route);
                        },
                        child: formCardsButton('Apply'))),
                SizedBox(
                  height: 10,
                ),
                formCards(
                    "assets/operation_grant.png",
                    "DLI 3.2: Operations Grant",
                    "If your business pays for supplies, rent, salaries, utilities, etc. and you need financial support for these.",
                    GestureDetector(
                        onTap: ()async {
                          setState(() {
                            grantType2 = "DLI 3.2";
                          });
                          Navigator.of(context)
                              .pushNamed(OperationGrantApplicationForm.route);
                        },
                        child: formCardsButton('Apply'))),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () async{
                   setState(() {
                      grantType3 = "DLI 3.3";
                    });
                    Navigator.of(context)
                        .pushNamed(ITGrantApplicationForm.route);
                  },
                  child: formCards(
                      "assets/IT_grant.png",
                      "DLI 3.3: IT Enhancement Grant",
                      "If your business needs technology tools such as e-commerce website, POS, stock or warehouse management, mobile applications, productivity suites, etc.",
                      formCardsButton('Apply')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
