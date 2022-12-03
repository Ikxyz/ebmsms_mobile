import "dart:io";
import "dart:typed_data";

import 'package:edo_jobs_portal/helpers/log.dart';
import "package:flutter_image_compress/flutter_image_compress.dart";

const IMAGE_QUALITY = 80;

Future<Uint8List?> compressImage({File? image, Uint8List? bytes}) async {
  Uint8List compressedImage;
  if (image != null) {
    compressedImage = await FlutterImageCompress.compressWithFile(
        image.absolute.path,
        quality: IMAGE_QUALITY) as dynamic;
  } else if (bytes != null) {
    compressedImage =
        await FlutterImageCompress.compressWithList(bytes, quality: 80);
  } else {
    throw Log("error occurred compressing image");
  }

  return compressedImage;
}
