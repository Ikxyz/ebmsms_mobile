import 'package:edo_jobs_portal/constant/localgovt.dart';
import 'package:edo_jobs_portal/pages/businesslist/business-list.dart';
import 'package:edo_jobs_portal/pages/homepage/homepage.dart';
import 'package:flutter/material.dart';

class Griddy extends StatefulWidget {
  Griddy({Key? key}) : super(key: key);

  @override
  State<Griddy> createState() => _GriddyState();
}

class _GriddyState extends State<Griddy> {
  final List<Widget> items = LGA.map((e) => GridItem(title: e)).toList();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: const EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 3,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: items),
    );
  }
}

class GridItem extends StatelessWidget {
  final String title;

  const GridItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(BusinessList.route, arguments: title);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: const [
              //background color of box
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
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
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Text(
            title,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
