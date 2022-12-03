import 'package:flutter/material.dart';

class Initials extends StatelessWidget {
  const Initials({Key? key, required this.boldtext, required this.lighttext})
      : super(key: key);
  final String boldtext;
  final String lighttext;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          boldtext,
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
        ),
        Text(
          lighttext,
          style: TextStyle(fontSize: 13, color: Colors.grey),
        )
      ],
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 40,
      decoration: BoxDecoration(
          color: Color.fromRGBO(236, 236, 236, 1),
          borderRadius: BorderRadiusDirectional.circular(10)),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
        child: Row(
          children: [
            Text(title, style: TextStyle(fontSize: 15)),
            Text(subtitle, style: TextStyle(fontSize: 15, color: Colors.grey))
          ],
        ),
      ),
    );
  }
}

class GrantsPersonalInfo extends StatelessWidget {
  const GrantsPersonalInfo({Key? key, required this.text1, required this.text2})
      : super(key: key);
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Container(
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
            Text(text1, style: TextStyle(fontSize: 15)),
            Text(text2, style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
