import 'package:app_turismo_tcc/src/pages/receptivos_page.dart';
import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:flutter/material.dart';
import 'package:device_apps/device_apps.dart';

class PraiaPage extends StatelessWidget {

  String title;
  String pathImg;
  String description;
  String toDo;

  PraiaPage(this.title, this.pathImg, this.description, this.toDo);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CardPraia(pathImg, title, description, toDo),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("História", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$description", style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
              wordSpacing: 0.5
            ), textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Localização", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24.0,
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 16.0, right: 16.0),
            child: Text("$toDo", style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
            ), textAlign: TextAlign.justify,),
          ),
          Padding(
            padding: EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [Colors.lightBlue, Colors.blueAccent]
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      onPressed: _openUber,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("UBER", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                          Icon(Icons.arrow_forward, color: Colors.white, size: 20.0,),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width / 2.5,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [Colors.blue[200], Colors.blue[200]]
                      ),
                      borderRadius: BorderRadius.circular(5.0)
                  ),
                  child: SizedBox.expand(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ReceptivosPage()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Receptivos", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                          Icon(Icons.arrow_forward, color: Colors.white, size: 20.0,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _openUber() async {
    Application app = await DeviceApps.getApp('com.ubercab');
    DeviceApps.openApp(app.packageName);
  }

}
