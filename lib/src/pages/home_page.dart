import 'package:app_turismo_tcc/src/pages/map_page.dart';
import 'package:app_turismo_tcc/src/utils/drawer_menu.dart';
import 'package:app_turismo_tcc/src/widgets/camera.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_slider.dart' as prefix0;
import 'package:app_turismo_tcc/src/widgets/google_maps.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CameraApp()));
              },
              child: Icon(Icons.camera_alt),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: 80.0,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Buscar...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          prefix0.CarouselDemo(),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MapPage(),
                ),
              );
            },
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  color: Colors.black,
                  height: 250.0,
                  width: double.infinity,
                ),
                Text("Encontre restaurantes próximos a voce.", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),),
              ],
            ),
          ),
          Divider(color: Colors.transparent,),
        ],
      ),
      drawer: DrawerMenu(),
    );
  }
}
