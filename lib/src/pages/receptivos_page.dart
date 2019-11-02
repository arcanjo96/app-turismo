import 'package:flutter/material.dart';

class ReceptivosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Receptivos"),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            _renderReceptivos("Luck Receptivo", "R. Epaminondas Gracindo - Pajuçara, AL", "(82) 3337-3171"),
            _renderReceptivos("WS Receptivo", "Av. Dr. Antônio Gouveia, 1307 - Pajuçara, Maceió - ALL", "(82) 99999-9191"),
            _renderReceptivos("Transalagoas", "Av. da Paz, 1318 - Centro, Maceió - AL", "(82) 3021-1329"),
            _renderReceptivos("Jaraguá Turismo", "R. Dr. Messias de Gusmão, 188 - Pajuçara, Maceió - ALL", "(82) 3337-2780"),
            _renderReceptivos("Edvantur Turismo Receptivo", "R. Jangadeiros Alagoanos, 1292 - Pajuçara, Maceió - AL", " (82) 3327-0432"),
          ],
        ),
      ),
    );
  }

  _renderReceptivos(title, address, phone) {
    return           Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.album),
            title: Text('$title'),
            subtitle: Text('$address'),
          ),
          ButtonTheme.bar( // make buttons use the appropriate styles for cards
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.phone),
                      Text(" $phone")
                    ],
                  ),
                  onPressed: () { /* ... */ },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
