import 'dart:io';

import 'package:camera_camera/camera_camera.dart';
import 'package:flutter/material.dart';

class BusinessCapture extends StatefulWidget {
  static const String route = "Business Capture";
  const BusinessCapture({Key? key}) : super(key: key);

  @override
  _BusinessCaptureState createState() => _BusinessCaptureState();
}

class _BusinessCaptureState extends State<BusinessCapture> {
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: photos.length,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width,
            child: Column(
              children: [
                Image.file(
                  photos[index],
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: openCamera,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
