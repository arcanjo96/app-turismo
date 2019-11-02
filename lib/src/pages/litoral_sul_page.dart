import 'package:app_turismo_tcc/src/widgets/card_cultura.dart';
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
                  ],
                ),
              ),
              prefix1.CarouselLitoralSul(),
              CardPraia("assets/images/praias/litoral-sul/praia-fances.jpg",
                  "Marechal Deodoro", "       Quem costuma viajar pelos encantos de Alagoas não pode deixar de conhecer Marechal Deodoro, com suas ruas históricas, casarios, igrejas, santos e anjos dos séculos XVII e XVIII. A história da primeira capital de Alagoas se mistura aos sons da banda de pífano, de Nelson da Rabeca e das Orquestras filarmônicas. Marechal nos encanta com sua lagoa, seus tons azuis esverdeados das praias do francês.\n       Os sabores da culinária da barra nova e massagueira. Desta forma você não pode esquecer de conhecer os pontos de file, um material registrado como patrimônio Alagoano com seus bordados cheios de cores e peças versáteis.  Por fim, não deixe de desfrutar de um clima bucólico, um jeito que só a gente sabe fazer. ", "° Casa de Marechal;\n° Construções antigas;\n° Igrejas consideradas patrimônio histórico e artístico nacional;\n° Igreja Nossa Senhora do Amparo;\n° Igreja Nossa Senhora da Conceição;\n° Igreja do Rosário Negros;\n° Convento de Santa Maria Madalena;\n° Ordem terceira de São Francisco;\n° Palácio Provincial;\n° Casa Nelson da Rabeca;\n° Massagueira;\n° Barra Nova;\n° Praia do Frances;\n° Saborear cocadas e doces regionais na vila de artesanato no Frances;\n° Polo gastronômico com diversas comidas regionais;\n° Fazer passeio como:; Surf;\n° Stand up no mar;\n° Caiaque;\n° Mergulho;\n° Passeio de barco;\n° Hobie cat;\n° Canoa Havaiana;\n° Kite surf;\n° Passeio de catamarã;\n° Paleteia"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia(
                  "assets/images/praias/litoral-sul/barra-sao-miguel.jpeg",
                  "Barra de São Miguel", "        Bem próximo de Maceió, localizado no litoral sul do estado de alagoas, vizinho dos munícipios Marechal Deodoro, Roteiro e São Miguel dos Campos, a Barra de São Miguel é considerada uma das cidades mais badaladas com suas belezas naturais e um dos destinos mais frequentados pelos turistas que visitam a capital alagoana. Basicamente dividida entre três partes:o bairro Barramar, a orla situada no bairro Niquim e o centro da cidade.", "° Passeio as piscinas naturais;\n° Surf;\n° Mirante Alto de Santana, onde se tem uma vista 360º do local Espaço gastronômico Villa Niquim.\n° Visita ao Praero - beach clubs"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/litoral-sul/praia-gunga.jpg",
                  "Falésias do Gunga", "        O município possui atualmente uma das maiores atrações turísticas de Alagoas. A enorme costa de areia branca, cheia de coqueiros, que une as águas do Oceano Atlântico com da Lagoa de Roteiro. A cidade é conhecida também pela fartura de sua Lagoa que é rica em sururu, massunim, peixes e ostras, sem falar da prática de esportes náuticos nas suas águas.", "° Bóia gigante puxada por uma lancha;\n° Flyboard;\n° Paraglider;\n° Banana boat;\n° Jet-ski;\n° Ultraleve e um bote que voa;\n° O passeio falésias do Gunga Passeio de buggy e quadriciclo;\n° Visita ao mirante;\n° A feirinha de artesanato da praia."),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/litoral-sul/piacabucu.jpg",
                  "Piaçabuçu", "        Piaçabuçu é um município Alagoano que fica no extremo sul de Alagoas a 135 km de Maceió e é bastante conhecido por suas belezas naturais e por possuir um dos passeios mais incríveis de Alagoas. Em Piaçabuçu também tem a praia do povoado Pontal do Peba é bem calmo, e as águas são tão claras que dá para enxergar as profundezas oceânicas. Pouco procurada e conhecida por turistas, ela é frequentada, a maior parte do tempo, pelos moradores da região e pelos pescadores. Esta praia se estende a sul por cerca de 20 km de dunas douradas até chegar à foz do Rio São Francisco. Outra forma de chegar é através de barco, que pega em Piaçabuçu.", "\n° Passeio de barco;\n° Passeio de lancha;\n° Superbuggy;\n° Voo para parasail;\n° Passeio de barco ao Velho Chico;\n° Pôr do sol no Rio;\n° Passeio histórico a Penedo e suas igrejas;\n° Convento de São Francisco;\n° Igreja de Santa Maria dos Anjos;\n° Teatro Sete de Setembro;\n° Museu do Paço Imperial;\n° O antigo Forte da Rocheira, na beira do Velho Chico."),
              Divider(
                color: Colors.transparent,
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Text("História e Cultura de Alaogas", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        fontFamily: "Agnetha",
                        height: 1.5,
                        color: Colors.blue
                    ), textAlign: TextAlign.center,),
                  ],
                ),
              ),
              CardCultura(
                  "assets/images/cultura/cultura-litoral-sul/casa-de-marechal.jpg", "Casa de Marechal", "       A principal característica de Jatiúca é o verde intenso de suas águas. Das três principais praias da área urban’	a de Maceió que os turistas mais visitam, a Jatiúca é a que tem ondas mais fortes, reúne surfistas e é sede de campeonatos do esporte ao longo do ano.\n        Barracas, ciclovia e pista de corrida compõem a infraestrutura. Local de fácil acesso, rodeado por shoppings, restaurantes, bares, casas de shows, traillers de lanches.", "Av. Dr. Antônio Gouveia, S/N - Box 67 - Pajuçara, Maceió - AL. \n\nHorário\nDomingo a Domingo 10:00 - 22:00"),
              Divider(
                color: Colors.transparent,
              ),
              CardCultura("assets/images/cultura/cultura-litoral-sul/palacio-provincial.jpg", "Palácio Provincial", "       A praia de Ponta verde é o um belo cartão-postal de Maceió. O mar azul esverdeado é margeado por coqueiros e combinam-se com os trechos de areia fofinha, formando o cenário da região. Na maré baixa surgem as piscinas naturais para complementar ainda mais a linda vista. Sua orla é tranquila é encantadora. Belos momentos você pode passar aqui, apenas curtindo o dia de sol. É uma das praias urbanas mais belas da cidade e que possui muito boa infraestrutura.\n        Aqui você encontra várias barracas, entre duas mais famosas e populares: a Lopana e a Kanoa. Elas fazem a alegria do pessoal que querem paquerar, bater um papo com os amigos e confraternizar. A turma do happy hour não perde tempo e lota os lugares que acabam ficando super animados. Portanto, chegue cedo para curtir bem.\n       Em Ponta Verde ainda há um complexo gastronômico, composto por uma choperia, uma churrascaria e uma cantina, que dão conta de todas as preferências. A orla de Ponta Verde é urbanizada, com calçadão, pista de caminhada, ciclovia, equipamentos de ginástica, brinquedos para as crianças, além de bancos e descansos, ótima para se exercitar com um belo visual. Aos domingos, uma parte da avenida mais próxima à praia é bloqueada e as famílias são presenteadas com uma área de lazer.", "° Passeio a piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de barco;\n° Passeio de jangada;\n° Passeio de lancha;\n° Passeio de Caiaque;\n° Stand Up;\n° Kite surf;\n° Vela;\n° Artesanato;"),
              Divider(
                color: Colors.transparent,
              ),
              CardCultura("assets/images/cultura/cultura-litoral-sul/santa-maria-madalena.jpg",
                  "Santa Maria Madalena", "        Pajuçara é um dos pontos favoritos dos turistas que visitam Maceió. Situa-se a 3 quilômetros do centro da cidade. Curtir o marzão azul de águas cristalinas e tranquilas, passear na orla, brincar com os pequenos na areia e mergulhar, são algumas coisas que você pode aproveitar nesta bela praia.Uma das mais famosas atrações daqui são as Piscinas Naturais de Pajuçara. Para visitá-las é preciso tomar uma das jangadas que ficam à disposição à beira-mar. As piscinas ficam bem próximas, a uma distância de 3 quilômetros da orla de Pajuçara. Em apenas 15 minutos de travessia você encontra o lugar e poderá aproveitar completamente o seu passeio.\n       As famosas piscinas são semelhantes a imensos aquários, com uma infinidade de corais, peixes e outras espécies do mar. O local se tornou um grande atrativo marinho entre turistas de todas as idades. É também o melhor trecho para mergulhar para aqueles que gostam de praticar o esporte, ou querem iniciar-se nesse tipo de aventura. Com um snorkel a atividade fica ainda mais legal. Se você não tem o seu, encontrará facilmente pessoas alugando pela orla. \n      Você pode apenas banhar-se nas águas mornas da piscina natural e nadar junto às espécies marinhas sem preocupação, pois a água só chega até a altura do peito. Para quem está viajando com crianças, isso é valioso demais!", "° Passeio as piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de jangada;\n° Snorkel;\n° Mergulho;\n° Feirinha de Artesanato"),
              Divider(
                color: Colors.transparent,
              ),
              CardCultura("assets/images/cultura/cultura-litoral-sul/igreja-penedo.jpg",
                  "Igreja de Nossa Senhora da Corrente", "        Pajuçara é um dos pontos favoritos dos turistas que visitam Maceió. Situa-se a 3 quilômetros do centro da cidade. Curtir o marzão azul de águas cristalinas e tranquilas, passear na orla, brincar com os pequenos na areia e mergulhar, são algumas coisas que você pode aproveitar nesta bela praia.Uma das mais famosas atrações daqui são as Piscinas Naturais de Pajuçara. Para visitá-las é preciso tomar uma das jangadas que ficam à disposição à beira-mar. As piscinas ficam bem próximas, a uma distância de 3 quilômetros da orla de Pajuçara. Em apenas 15 minutos de travessia você encontra o lugar e poderá aproveitar completamente o seu passeio.\n       As famosas piscinas são semelhantes a imensos aquários, com uma infinidade de corais, peixes e outras espécies do mar. O local se tornou um grande atrativo marinho entre turistas de todas as idades. É também o melhor trecho para mergulhar para aqueles que gostam de praticar o esporte, ou querem iniciar-se nesse tipo de aventura. Com um snorkel a atividade fica ainda mais legal. Se você não tem o seu, encontrará facilmente pessoas alugando pela orla. \n      Você pode apenas banhar-se nas águas mornas da piscina natural e nadar junto às espécies marinhas sem preocupação, pois a água só chega até a altura do peito. Para quem está viajando com crianças, isso é valioso demais!", "° Passeio as piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de jangada;\n° Snorkel;\n° Mergulho;\n° Feirinha de Artesanato"),
              Divider(
                color: Colors.transparent,
              ),
              CardCultura("assets/images/cultura/cultura-litoral-sul/santa-maria-dos-anjos.JPG",
                  "Igreja Santa Maria dos Anjos", "        Pajuçara é um dos pontos favoritos dos turistas que visitam Maceió. Situa-se a 3 quilômetros do centro da cidade. Curtir o marzão azul de águas cristalinas e tranquilas, passear na orla, brincar com os pequenos na areia e mergulhar, são algumas coisas que você pode aproveitar nesta bela praia.Uma das mais famosas atrações daqui são as Piscinas Naturais de Pajuçara. Para visitá-las é preciso tomar uma das jangadas que ficam à disposição à beira-mar. As piscinas ficam bem próximas, a uma distância de 3 quilômetros da orla de Pajuçara. Em apenas 15 minutos de travessia você encontra o lugar e poderá aproveitar completamente o seu passeio.\n       As famosas piscinas são semelhantes a imensos aquários, com uma infinidade de corais, peixes e outras espécies do mar. O local se tornou um grande atrativo marinho entre turistas de todas as idades. É também o melhor trecho para mergulhar para aqueles que gostam de praticar o esporte, ou querem iniciar-se nesse tipo de aventura. Com um snorkel a atividade fica ainda mais legal. Se você não tem o seu, encontrará facilmente pessoas alugando pela orla. \n      Você pode apenas banhar-se nas águas mornas da piscina natural e nadar junto às espécies marinhas sem preocupação, pois a água só chega até a altura do peito. Para quem está viajando com crianças, isso é valioso demais!", "° Passeio as piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de jangada;\n° Snorkel;\n° Mergulho;\n° Feirinha de Artesanato"),
              Divider(
                color: Colors.transparent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
