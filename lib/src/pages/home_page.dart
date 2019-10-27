import 'package:app_turismo_tcc/src/pages/map_page.dart';
import 'package:app_turismo_tcc/src/utils/drawer_menu.dart';
import 'package:app_turismo_tcc/src/widgets/camera.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_home.dart' as prefix1;
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
        title: Text("Início"),
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
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Text("Os melhores destinos de Alagoas", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: "Agnetha",
            height: 1.5,
            color: Colors.blue
          ), textAlign: TextAlign.center,),
          prefix1.CarouselHome(),
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
              alignment: Alignment.bottomCenter,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: ExactAssetImage("assets/images/comida-banner.jpeg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  height: 250.0,
                  width: double.infinity,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white30,
                  ),
                  margin: EdgeInsets.all(16.0),
                  height: 60.0,
                  width: double.infinity,
                  child: Center(
                    child: Text("Encontre restaurantes próximos a você.", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18.0,
                      shadows: [
                        Shadow(color: Colors.black, offset: Offset(1, -1)),
                      ]
                    ),),
                  ),
                ),
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
