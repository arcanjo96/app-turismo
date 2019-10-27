import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_litoral_central.dart' as prefix1;
import 'package:flutter/material.dart';

class LitoralCentralPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Litoral Central"),
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
                height: 258.0,
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
                    prefix1.CarouselLitoralCentral(),
                  ],
                ),
              ),
              CardPraia(
                  "assets/images/praias/praia-jatiuca.jpg", "Praia de Jatiúca"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-ponta-verde.jpg",
                  "Praia de Ponta Verde"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-pajucara.jpg",
                  "Praia de Pajuçara"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia(
                  "assets/images/praias/praia-guaxuma.jpg", "Praia de Guaxuma"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-garca-torta.jpg",
                  "Praia de Garça Torta"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia(
                  "assets/images/praias/praia-ipioca.jpg", "Praia de Ipioca"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-paripueira.jpg",
                  "Praia de Paripueira"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-barra-santo-antonio.jpg",
                  "Barra de Santo Antônio"),
            ],
          ),
        ),
        Text("teste")
      ],
    );
  }
}
