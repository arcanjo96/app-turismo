import 'package:app_turismo_tcc/src/pages/praia_page.dart';
import 'package:flutter/material.dart';

class CardPraia extends StatelessWidget {

  String pathImg;
  String title;

  CardPraia(this.pathImg, this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => PraiaPage(title, pathImg),
        ));
      },
      child: Hero(
        tag: pathImg,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            Container(
              height: 250.0,
              child: SizedBox.expand(
                child: Image.asset("$pathImg", fit: BoxFit.cover,),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white30,
              ),
              margin: EdgeInsets.only(bottom: 16.0),
              height: 60.0,
              width: 200.0,
              child: Center(
                child: Text("$title", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
