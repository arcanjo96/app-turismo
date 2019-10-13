import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:flutter/material.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_slider.dart' as prefix0;

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
            Tab(child: Text("História", style: TextStyle(
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
                height: 250.0,
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text(
                      "Destinos em destaque",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
                    ),
                    prefix0.CarouselDemo()
                  ],
                ),
              ),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia(
                  "assets/images/praias/praia-jatiuca.jpg", "Praia de Jatiuca"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-ponta-verde.jpg",
                  "Praia de Ponta Verde"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-pajucara.jpg",
                  "Praia de Pajucara"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia(
                  "assets/images/praias/praia-guaxuma.jpg", "Praia de Guaxuma"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-garca-torta.jpg",
                  "Praia de Garca Torta"),
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
                  "Barra de Santo Antonio"),
            ],
          ),
        ),
        Text("teste")
      ],
    );
  }
}
