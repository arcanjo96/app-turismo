import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:flutter/material.dart';

class PraiaPage extends StatelessWidget {

  String title;
  String pathImg;

  PraiaPage(this.title, this.pathImg);

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
          CardPraia(pathImg, title),
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
            child: Text("       Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic. \n      Typesetting, remaining essentially unchanged it was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
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
            padding: const EdgeInsets.only(top: 8.0, left: 16.0, bottom: 16.0),
            child: Text("- Teste. \n- Teste 2. \n- Teste 3. \n- Teste 4. \n- Teste 5. \n- Teste 6. \n- Teste 7. \n- Teste 8.", style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 18.0,
            ), textAlign: TextAlign.justify,),
          ),
        ],
      ),
    );
  }

}
