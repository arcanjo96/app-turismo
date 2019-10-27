import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_litoral_norte.dart' as prefix1;
import 'package:flutter/material.dart';

class LitoralNortePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Litoral Norte"),
          bottom: TabBar(tabs: [
            Tab(child: Text("Praias", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),),),
            Tab(child: Text("Cultura", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),),)
          ]),
        ),
        body: _body(),
      ),
    );
  }

  _body() {
    return TabBarView(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 260.0,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text("Destinos em destaque", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Agnetha",
                        height: 1.5,
                        color: Colors.blue
                    ), textAlign: TextAlign.center,),
                    prefix1.CarouselLitoralNorte(),
                  ],
                ),
              ),
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
        ),
        Text("2")
      ],
    );
  }

}
