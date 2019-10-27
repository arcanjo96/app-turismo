import 'package:app_turismo_tcc/src/widgets/card_praia.dart';
import 'package:app_turismo_tcc/src/widgets/carousel_litoral_sul.dart' as prefix1;
import 'package:flutter/material.dart';

class LitoralSulPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Litoral Sul"),
          bottom: TabBar(tabs: [
            Tab(
              child: Text(
                "Praias",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Tab(
              child: Text(
                "Cultura",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            )
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
                    Text(
                      "Destinos em destaque",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "Agnetha",
                          height: 1.5,
                          color: Colors.blue),
                      textAlign: TextAlign.center,
                    ),
                    prefix1.CarouselLitoralSul(),
                  ],
                ),
              ),
              CardPraia("assets/images/praias/litoral-sul/praia-fances.jpg",
                  "Praia do Francês"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia(
                  "assets/images/praias/litoral-sul/barra-sao-miguel.jpeg",
                  "Barra de São Miguel"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/litoral-sul/praia-gunga.jpg",
                  "Falésias do Gunga"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/litoral-sul/pontal-coruripe.jpg",
                  "Pontal de Coruripe"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/litoral-sul/piacabucu.jpg",
                  "Piaçabuçu"),
              Divider(
                color: Colors.transparent,
              ),
            ],
          ),
        ),
        Text("Teste")
      ],
    );
  }
}
