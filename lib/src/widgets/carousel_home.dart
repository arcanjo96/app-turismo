import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  "assets/images/praias/praia-ponta-verde.jpg",
  "assets/images/praias/litoral-norte/sao-miguel-dos-milagres.jpg",
  "assets/images/praias/litoral-sul/praia-gunga.jpg",
];

final Widget placeholder = Container(color: Colors.grey);

final List child = map<Widget>(
  imgList,
      (index, i) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(children: <Widget>[
          Image.network(i, fit: BoxFit.cover, width: 1000.0),
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(200, 0, 0, 0), Color.fromARGB(0, 0, 0, 0)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Text(
                'No. $index image',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  },
).toList();

List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }

  return result;
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CarouselSlider(
        items: child,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: map<Widget>(
          imgList,
              (index, url) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4)),
            );
          },
        ),
      ),
    ]);
  }
}

class CarouselHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Auto playing carousel
    final CarouselSlider autoPlayDemo = CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: imgList.map(
            (url) {
          return Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Image.asset(
                    url,
                    fit: BoxFit.cover,
                    width: 1000.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: _renderNameForImg(url),
              ),
            ],
          );
        },
      ).toList(),
    );

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 15.0),
        child: Column(children: [
          autoPlayDemo,
        ]
        )
    );
  }

  Widget _renderNameForImg(String urlImage) {
    if(urlImage == "assets/images/praias/praia-ponta-verde.jpg") {
      return Text("Ponta Verde", style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16.0,
        color: Colors.white,
        shadows: [Shadow(
          color: Colors.black, offset: Offset(1, 2)
        )],
      ),);
    } else if(urlImage == "assets/images/praias/litoral-norte/sao-miguel-dos-milagres.jpg") {
      return Text("Milagres", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.white,
        shadows: [Shadow(
            color: Colors.black, offset: Offset(1, 2)
        )],
      ),);
    } else {
      return Text("Gunga", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          color: Colors.white,
        shadows: [Shadow(
            color: Colors.black, offset: Offset(1, 2)
        )],
      ),);
    }
  }

}