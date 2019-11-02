import 'package:app_turismo_tcc/src/widgets/card_cultura.dart';
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
                  "assets/images/praias/praia-jatiuca.jpg", "Praia de Jatiúca", "       A principal característica de Jatiúca é o verde intenso de suas águas. Das três principais praias da área urban’	a de Maceió que os turistas mais visitam, a Jatiúca é a que tem ondas mais fortes, reúne surfistas e é sede de campeonatos do esporte ao longo do ano.\n        Barracas, ciclovia e pista de corrida compõem a infraestrutura. Local de fácil acesso, rodeado por shoppings, restaurantes, bares, casas de shows, traillers de lanches.", "° Passeio de Jangada para as piscinas naturais;\n° Passeio das 09 ilhas;\n° Passeio de patinet eletrônico;\n° Passeio de bicicleta em família;\n° Standa up;\n° Caiaque;\n° Surf"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-ponta-verde.jpg", "Praia de Ponta Verde", "       A praia de Ponta verde é o um belo cartão-postal de Maceió. O mar azul esverdeado é margeado por coqueiros e combinam-se com os trechos de areia fofinha, formando o cenário da região. Na maré baixa surgem as piscinas naturais para complementar ainda mais a linda vista. Sua orla é tranquila é encantadora. Belos momentos você pode passar aqui, apenas curtindo o dia de sol. É uma das praias urbanas mais belas da cidade e que possui muito boa infraestrutura.\n        Aqui você encontra várias barracas, entre duas mais famosas e populares: a Lopana e a Kanoa. Elas fazem a alegria do pessoal que querem paquerar, bater um papo com os amigos e confraternizar. A turma do happy hour não perde tempo e lota os lugares que acabam ficando super animados. Portanto, chegue cedo para curtir bem.\n       Em Ponta Verde ainda há um complexo gastronômico, composto por uma choperia, uma churrascaria e uma cantina, que dão conta de todas as preferências. A orla de Ponta Verde é urbanizada, com calçadão, pista de caminhada, ciclovia, equipamentos de ginástica, brinquedos para as crianças, além de bancos e descansos, ótima para se exercitar com um belo visual. Aos domingos, uma parte da avenida mais próxima à praia é bloqueada e as famílias são presenteadas com uma área de lazer.", "° Passeio a piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de barco;\n° Passeio de jangada;\n° Passeio de lancha;\n° Passeio de Caiaque;\n° Stand Up;\n° Kite surf;\n° Vela;\n° Artesanato;"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-pajucara.jpg",
                  "Praia de Pajuçara", "        Pajuçara é um dos pontos favoritos dos turistas que visitam Maceió. Situa-se a 3 quilômetros do centro da cidade. Curtir o marzão azul de águas cristalinas e tranquilas, passear na orla, brincar com os pequenos na areia e mergulhar, são algumas coisas que você pode aproveitar nesta bela praia.Uma das mais famosas atrações daqui são as Piscinas Naturais de Pajuçara. Para visitá-las é preciso tomar uma das jangadas que ficam à disposição à beira-mar. As piscinas ficam bem próximas, a uma distância de 3 quilômetros da orla de Pajuçara. Em apenas 15 minutos de travessia você encontra o lugar e poderá aproveitar completamente o seu passeio.\n       As famosas piscinas são semelhantes a imensos aquários, com uma infinidade de corais, peixes e outras espécies do mar. O local se tornou um grande atrativo marinho entre turistas de todas as idades. É também o melhor trecho para mergulhar para aqueles que gostam de praticar o esporte, ou querem iniciar-se nesse tipo de aventura. Com um snorkel a atividade fica ainda mais legal. Se você não tem o seu, encontrará facilmente pessoas alugando pela orla. \n      Você pode apenas banhar-se nas águas mornas da piscina natural e nadar junto às espécies marinhas sem preocupação, pois a água só chega até a altura do peito. Para quem está viajando com crianças, isso é valioso demais!", "° Passeio as piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de jangada;\n° Snorkel;\n° Mergulho;\n° Feirinha de Artesanato"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia(
                  "assets/images/praias/praia-guaxuma.jpg", "       Praia de Guaxuma", "        Um bairro localizado ao norte do litoral maceioense, Guaxuma foi criado através da Lei Municipal promulgada 06 de janeiro de 200 com Casas de veraneio e alguns quiosques que dão movimento à praia, Guaxuma possui um mar verde pontilhado por currais de peixe (armadilhas de pesca feitas com espetos de pau). O mar é bem calmo, pois é protegido pelos recifes de coral característicos de Maceió. Uma abundante vegetação é a característica mais apreciada na praia, Com uma grande quantidade de coqueiros, que se encontram em redor dos vários quiosques espalhados.", "° Surf;Pôr do sol na Lagoa;\n° Passeio a cavalo"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-garca-torta.jpg",
                  "Praia de Garça Torta", "       Localizado no litoral norte, entre os bairros de Guaxuma e Riacho Doce e a cerca de 15 km da praia de Pajuçara, o pequeno bairro da Garça Torta guarda a praia batizada de mesmo nome. Ainda com pouco movimentada, o estreito bairro que desagua no mar um refúgio, é considerada uma das praias mais lindas, um balneário deserto com um visual deslumbrante ideal para quem quer relaxar e se conectar com a natureza, possui poucas casas de veraneios e alguns bares e restaurantes rústicos na orla. O mar é seguro para banho, mas atenção é sempre bom e como as outras praias da região, ela também possui formação de piscinas naturais durante a maré baixa por conta dos recifes. Curtir o dia e relaxar são as opções para fazer na praia de Garça torta. Na orla há alguns bares e restaurantes que servem deliciosos drinks e petiscos e também se encontra boas pousadas ao redor. ", "° Passeio a piscinas naturais;\n° Stand up;\n° Caiaque;\n° Jet sky;\n° Passeio de lancha "),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-paripueira.jpg",
                  "Praia de Paripueira", "        Localizada na região metropolitana de Maceió, a praia de Paripueira conta com aproximadamente 25 belas piscinas naturais. Sua característica marcante são as barreiras de corais, sendo elas consideradas a terceira formação de corais maior de todo o mundo. Paripueira fica menos de 1h de Maceió, ela se encontra perto de tudo, o que é vantagem para os que procuram tranquilidade, mas não dispensam ficar longe de um centro urbano. Ela é uma das praias mais longas de todo o Estado de Alagoas e durante a maré baixa da pra andar vários quilômetros mar adentro e a água não passa dos joelhos.", "° Passeio de barco;\n° Pisicnas naturais;\n° Mergulho com cilindro;\n° Caiaque e Vela;\n° Jogos na areia;\n° jet ski;\n° Por do sol no Rio"),
              Divider(
                color: Colors.transparent,
              ),
              CardPraia("assets/images/praias/praia-barra-santo-antonio.jpg",
                  "Barra de Santo Antônio", "       Situada no litoral norte, a Barra de Santo Antônio possui ótimas belezas naturais como a praia do carro quebrado, praia tabuba, praia do morro, praia da ponta do gamela, praia pedra da cebola e a ilha da crôa. A infraestrutura do município é simples, o que cativa os visitantes. Cortada pelo rio santo Antônio grande, a cidade se divide em duas partes, uma mais urbana que integra a estrutura da cidade e a outra mais nativa onde se concentram os principais pontos turísticos como por exemplo a ilha da crôa, cuja travessia pode ser feita por balsa ou pela ponte.", "° Visita a ilha da croa de barco;\n° Passeio de lancha;\n° Mergulho;\n° Passeio em Falésias"),
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
                  "assets/images/cultura/cultura-litoral-central/feirinha-artesanato.jpg", "Feirinha da Pajuçara", "       A principal característica de Jatiúca é o verde intenso de suas águas. Das três principais praias da área urban’	a de Maceió que os turistas mais visitam, a Jatiúca é a que tem ondas mais fortes, reúne surfistas e é sede de campeonatos do esporte ao longo do ano.\n        Barracas, ciclovia e pista de corrida compõem a infraestrutura. Local de fácil acesso, rodeado por shoppings, restaurantes, bares, casas de shows, traillers de lanches.", "Av. Dr. Antônio Gouveia, S/N - Box 67 - Pajuçara, Maceió - AL. \n\nHorário\nDomingo a Domingo 10:00 - 22:00"),
              Divider(
                color: Colors.transparent,
              ),
              CardCultura("assets/images/cultura/cultura-litoral-central/misa.png", "Misa", "       A praia de Ponta verde é o um belo cartão-postal de Maceió. O mar azul esverdeado é margeado por coqueiros e combinam-se com os trechos de areia fofinha, formando o cenário da região. Na maré baixa surgem as piscinas naturais para complementar ainda mais a linda vista. Sua orla é tranquila é encantadora. Belos momentos você pode passar aqui, apenas curtindo o dia de sol. É uma das praias urbanas mais belas da cidade e que possui muito boa infraestrutura.\n        Aqui você encontra várias barracas, entre duas mais famosas e populares: a Lopana e a Kanoa. Elas fazem a alegria do pessoal que querem paquerar, bater um papo com os amigos e confraternizar. A turma do happy hour não perde tempo e lota os lugares que acabam ficando super animados. Portanto, chegue cedo para curtir bem.\n       Em Ponta Verde ainda há um complexo gastronômico, composto por uma choperia, uma churrascaria e uma cantina, que dão conta de todas as preferências. A orla de Ponta Verde é urbanizada, com calçadão, pista de caminhada, ciclovia, equipamentos de ginástica, brinquedos para as crianças, além de bancos e descansos, ótima para se exercitar com um belo visual. Aos domingos, uma parte da avenida mais próxima à praia é bloqueada e as famílias são presenteadas com uma área de lazer.", "° Passeio a piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de barco;\n° Passeio de jangada;\n° Passeio de lancha;\n° Passeio de Caiaque;\n° Stand Up;\n° Kite surf;\n° Vela;\n° Artesanato;"),
              Divider(
                color: Colors.transparent,
              ),
              CardCultura("assets/images/cultura/cultura-litoral-central/theo-brandao.png",
                  "Museu Théo Brandão", "        Pajuçara é um dos pontos favoritos dos turistas que visitam Maceió. Situa-se a 3 quilômetros do centro da cidade. Curtir o marzão azul de águas cristalinas e tranquilas, passear na orla, brincar com os pequenos na areia e mergulhar, são algumas coisas que você pode aproveitar nesta bela praia.Uma das mais famosas atrações daqui são as Piscinas Naturais de Pajuçara. Para visitá-las é preciso tomar uma das jangadas que ficam à disposição à beira-mar. As piscinas ficam bem próximas, a uma distância de 3 quilômetros da orla de Pajuçara. Em apenas 15 minutos de travessia você encontra o lugar e poderá aproveitar completamente o seu passeio.\n       As famosas piscinas são semelhantes a imensos aquários, com uma infinidade de corais, peixes e outras espécies do mar. O local se tornou um grande atrativo marinho entre turistas de todas as idades. É também o melhor trecho para mergulhar para aqueles que gostam de praticar o esporte, ou querem iniciar-se nesse tipo de aventura. Com um snorkel a atividade fica ainda mais legal. Se você não tem o seu, encontrará facilmente pessoas alugando pela orla. \n      Você pode apenas banhar-se nas águas mornas da piscina natural e nadar junto às espécies marinhas sem preocupação, pois a água só chega até a altura do peito. Para quem está viajando com crianças, isso é valioso demais!", "° Passeio as piscinas naturais;\n° Passeio das 9 ilhas;\n° Passeio de jangada;\n° Snorkel;\n° Mergulho;\n° Feirinha de Artesanato"),
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
