import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.color,
      this.loading = false})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;
  final Color? color;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading == true ? null : onPressed,
      child: Container(
        width: 200,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromRGBO(0, 194, 64, 1)),
        child: loading == true
            ? const SizedBox(
                width: 30,
                height: 30,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : Center(
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,

                      fontWeight: FontWeight.bold),
                ),
              ),
      ),
    );
  }
}

class Buttons2 extends StatelessWidget {
  const Buttons2(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.color,
      required this.gradient})
      : super(key: key);
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 200,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            gradient: gradient),
        child: Text(
          text,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
