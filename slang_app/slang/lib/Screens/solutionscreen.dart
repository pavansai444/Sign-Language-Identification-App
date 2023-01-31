import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'package:path/path.dart';
import 'package:async/async.dart';
String txt = "";
String txt1 =
    "Upload or take a well cropped image containing the Hand Sign to figure out what Letter it is";

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late XFile img;

  // The function which will upload the image as a file
  void upload(XFile imageFile) async {
    var stream =http.ByteStream(DelegatingStream(imageFile.openRead()));
    var length = await imageFile.length();

    String base = "http://10.36.3.192:5000";

    var uri = Uri.parse('$base/analyze');

    var request = http.MultipartRequest("POST", uri);
    var multipartFile = http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));
    //contentType: new MediaType('image', 'png'));

    request.files.add(multipartFile);
    var response = await request.send();
    print(response.statusCode);
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);
      int l = value.length;
      txt = value;
     

      setState(() {});
    });
  }

  void image_picker(int a) async {
    txt1 = "";
    setState(() {});
    debugPrint("Image Picker Activated");
    if (a == 0) {
      img = (await ImagePicker().pickImage(source: ImageSource.camera ,imageQuality: 25)) as XFile;
    } else {
      img = (await ImagePicker().pickImage(source: ImageSource.gallery)) as XFile;
    }

    txt = "Analysing...";
    debugPrint(img.toString());
    upload(img);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Sign Language"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            /*img == null
                ?*/ Text(
              txt1,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            ),
               /* Image.file(File(img.path),
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.8),*/
            Text(
              txt,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32.0,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Align(
              alignment: Alignment(1.0, 1.0),
              child: FloatingActionButton(
                onPressed: () {
                  image_picker(0);
                },
                child: const Icon(Icons.camera_alt),
              )),
          Align(
              alignment: const Alignment(1.0, 0.75),
              child: FloatingActionButton(
                  onPressed: () {
                    image_picker(1);
                  },
                  child: const Icon(Icons.file_upload))),
        ],
      ),
    );
  }
}


