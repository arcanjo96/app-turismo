import 'package:app_turismo_tcc/src/widgets/card_cultura.dart';
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
                  ],
                ),
              ),
              prefix1.CarouselLitoralNorte(),
              CardPraia("assets/images/praias/litoral-norte/sao-miguel-dos-milagres.jpg", "São Miguel dos Milagres", "        São Miguel dos Milagres é um dos mais antigos povoados de Alagoas. A colonização começou durante a invasão holandesa, quando moradores de Porto Calvo fugiram à procura de um abrigo onde pudessem observar o movimento dos invasores que utilizavam o rio Manguaba para chegar ao interior. Mas o nome veio depois e tem um motivo: um pescador encontrou na praia uma peça de madeira coberta por musgos e algas e passou a usá-la nos serviços domésticos. Ao limpar a peça, o pescador descobriu que era a estátua de São Miguel Arcanjo, ficando curado de um grande problema de saúde.\n        A notícia se espalhou e o lugar ficou conhecido como São Miguel dos Milagres. Por algum tempo, o povoado liderou o comércio açucareiro e chegou a ser o maior produtor de coco, quando ainda pertencia a Porto de Pedras. Em 1864, foi elevado à vila. Em 1960, foi obtida, finalmente a emancipação. São Miguel dos Milagres fica a 106 km de Maceió e tem quatro praias, nas quais se divide uma população de aproximadamente seis mil habitantes. As praias de areia fina e clara, o mar azul-esverdeado, as piscinas naturais e os recifes de corais são o atrativo de Milagres. Um lugar onde a tranquilidade e o bem-estar são garantidos.", "° Mergulho;\n° Passeio de Jangada;\n° Passeio de Lancha;\n° Passeio de bicicleta;\n° Passeio as piscinas naturais;\n° Passeio de buggy;\n° Passeio barco;"),
              Divider(color: Colors.transparent,),
              CardPraia("assets/images/praias/litoral-norte/porto-de-pedras.jpg", "Porto de Pedras", "", ""),
              Divider(color: Colors.transparent,),
              CardPraia("assets/images/praias/litoral-norte/porto-da-rua.jpg", "Porto da Rua", "", ""),
              Divider(color: Colors.transparent,),
              CardPraia("assets/images/praias/litoral-norte/praia-japaratinga.jpg", "Praia de Japaratinga", "       Cidade do litoral norte de Alagoas, é poesia de sol e praias, Japaratinga começou numa colônia de pescadores implantada onde hoje é a prefeitura municipal, e se desenvolveu a partir de 1800, com o início do ciclo do coco. Em 1935 já contava com um pequeno estaleiro para os navios transportadores de coco. Uma estrada que dava acesso apenas a animais ligava à rodovia principal, que conduzia até Porto Calvo. Rodeada de uma beleza natural, cercadas por vastos coqueirais, Japaratinga é destino de paz.", "° Navegar até às piscinas naturais;\n° Mergulho;Pôr do sol no rio Maguaba;\n° Passeio de catamarã;\n° Passeio quatro ilhas, com parada na prainha da Cidade de Porto de Pedras;\n° Stand UP"),
              Divider(color: Colors.transparent,),
              CardPraia("assets/images/praias/litoral-norte/maragogi.jpg", "Maragogi", "      Peroba, São Bento e Barra Grande /Estrela-do-mar, que brilha no norte de Alagoas é sobretudo, um destino para curtir o mar e relaxar, essa região da Costa dos Corais é perfeita para quem busca um mar clarinho e calmo. O dia de quem escolhe Maragogi como destino é quase sempre dedicado ao mar ou aos passeios. O ponto mais famoso da cidade, com certeza, são suas piscinas naturais, chamadas pelos nativos de galés, que, visitadas durante a maré baixa, proporcionam um ótimo mergulho com máscara ou cilindro e permitem admirar muitos peixes. Para além do mar, vale a pena dedicar um tempo à gastronomia da região. Peixes e frutos do mar estão sempre nos cardápios dos restaurantes e contam com a vantagem de serem servidos frescos.", "° Navegar até às piscinas naturais;\n° Mergulho;\n° Mergulho com Cilindro;\n° Passeio de catamarã;\n° Passeio quatro ilhas, com parada na prainha da Cidade de Porto de Pedras;\n° Stand UP"),
              Divider(color: Colors.transparent,),
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
