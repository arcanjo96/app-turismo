import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_slider.dart' as prefix0;
import 'package:flutter/material.dart';

class LitoralSulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Litoral Sul"),
      ),
      body: _body(),
    );
  }

  _body() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: 250.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Text("Destinos em destaque", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),),
                prefix0.CarouselDemo(),
              ],
            ),
          ),
          Divider(color: Colors.transparent,),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-sul/praia-fances.jpg", "Praia do Frances"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-sul/barra-sao-miguel.jpeg", "Barra de São Miguel"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-sul/praia-gunga.jpg", "Falésias do Gunga"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-sul/pontal-coruripe.jpg", "Pontal de Coruripe"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-sul/piacabucu.jpg", "Piacabucu"),
          Divider(color: Colors.transparent,),
        ],
      ),
    );
  }

}
