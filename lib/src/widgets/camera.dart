import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {

  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tire uma foto"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _takePicture,
        child: Icon(Icons.camera_alt),
      ),
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16.0),
          height: double.infinity,
          child: Center(
            child: _image == null ? Text("Nenhuma imagem selecionada.") : Image.file(_image),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    _takePicture();
  }

  void _takePicture() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  _shareImage() async {
    final ByteData bytes1 = await rootBundle.load("$_image");
    await Share.file("turismo image", "turismo.jpg", _image.readAsBytesSync(), "image/jpg");
  }

}
