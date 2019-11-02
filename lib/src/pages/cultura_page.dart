import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:flutter/material.dart';

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
      body: _body(),
    );
  }

  _body() {
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
            child: Text("O que fazer?", style: TextStyle(
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
        ],
      ),
    );
  }

}
