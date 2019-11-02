import 'dart:io';
import 'dart:typed_data';

import 'package:device_apps/device_apps.dart';
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 126.0),
            height: 50.0,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [Color(0xFFa836b5), Color(0xFFfcad44)]
                ),
                borderRadius: BorderRadius.circular(5.0)
            ),
            child: SizedBox.expand(
              child: FlatButton(
                onPressed: _openInsta,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Instagram", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 20.0,),
                  ],
                ),
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: _takePicture,
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(16.0),
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Center(
                  child: _image == null ? Text("Nenhuma imagem selecionada.") : Image.file(_image),
                ),

              ],
            ),
          ),
        ],
      ),
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

  _openInsta() async {
    Application app = await DeviceApps.getApp('com.instagram.android');
    DeviceApps.openApp(app.packageName);
  }


}
