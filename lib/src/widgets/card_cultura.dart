import 'package:app_turismo_tcc/src/pages/praia_page.dart';
import 'package:flutter/material.dart';

class CardCultura extends StatelessWidget {

  String pathImg;
  String title;
  String description;
  String toDo;

  CardCultura(this.pathImg, this.title, this.description, this.toDo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) => PraiaPage(title, pathImg, description, toDo),
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
              padding: EdgeInsets.all(5.0),
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
