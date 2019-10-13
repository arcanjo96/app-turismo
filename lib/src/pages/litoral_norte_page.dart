import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:flutter/material.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_slider.dart' as prefix0;

class LitoralNortePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Litoral Norte"),
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
                prefix0.CarouselDemo()
              ],
            ),
          ),
          Divider(color: Colors.transparent,),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-norte/sao-miguel-dos-milagres.jpg", "São Miguel dos Milagres"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-norte/porto-de-pedras.jpg", "Porto de Pedras"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-norte/porto-da-rua.jpg", "Porto da Rua"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-norte/praia-japaratinga.jpg", "Praia de Japaratinga"),
          Divider(color: Colors.transparent,),
          CardPraia("assets/images/praias/litoral-norte/maragogi.jpg", "Maragogi"),
          Divider(color: Colors.transparent,),
        ],
      ),
    );
  }

}
