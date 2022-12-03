// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GrantsContainer extends StatelessWidget {
  const GrantsContainer(
      {Key? key,
      required this.color,
      required this.text,
      required this.amount,
      required this.image})
      : super(key: key);
  final Color color;
  final String text;
  final String amount;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
                bottomEnd: Radius.circular(10),
                bottomStart: Radius.circular(10)),
            boxShadow: const [
              //background color of box
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.05),
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 1.0, //extend the shadow
                offset: Offset(
                  5.0, // Move to right 10  horizontally
                  5.0, // Move to bottom 10 Vertically
                ),
              )
            ]),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadiusDirectional.only(
                      topEnd: Radius.circular(10),
                      topStart: Radius.circular(10)),
                  color: color),
              // ignore: prefer_const_constructors
              child: Text(
                text,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    image,
                    width: 70,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NGN',
                        style: TextStyle(color: color),
                      ),
                      Text(
                        amount,
                        style: TextStyle(color: color, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
