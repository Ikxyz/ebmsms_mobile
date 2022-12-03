// import "dart:io";
// import "dart:typed_data";

// import "package:edo_jobs_portal/firebase/main.dart";
// import "package:edo_jobs_portal/helpers/error.dart";

// Future<String> uploadProductImageToCloudStorage(String fileName,
//     {File? file, Uint8List? bytes}) async {
//   if (file == null && bytes == null) {
//     throw InAppError("file or byte is required for upload");
//   }

//   final uploadTask = file != null
//       ? await ProductImageStorage.child(fileName).putFile(file)
//       : await ProductImageStorage.child(fileName).putData(bytes!);

//   final url = await uploadTask.ref.getDownloadURL();
//   return url;
// }

// Future<String> uploadProfilePhotoToCloudStorage(String fileName,
//     {File? file, Uint8List? bytes}) async {
//   if (file == null && bytes == null) {
//     throw InAppError("file or byte is required for upload");
//   }

//   final uploadTask = file != null
//       ? await ProfileImageStorage.child(fileName).putFile(file)
//       : await ProfileImageStorage.child(fileName).putData(bytes!);

//   final url = await uploadTask.ref.getDownloadURL();
//   return url;
// }
