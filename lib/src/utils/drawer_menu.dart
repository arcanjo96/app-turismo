import 'package:app_turismo_tcc/src/pages/litoral_central_page.dart';
import 'package:app_turismo_tcc/src/pages/litoral_norte_page.dart';
import 'package:app_turismo_tcc/src/pages/litoral_sul_page.dart';
import 'package:app_turismo_tcc/src/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://image.flaticon.com/icons/png/128/145/145852.png"),
            ),
            accountName: Text("Maria Eduarda"),
            accountEmail: Text("eduarda@gmail.com"),
          ),
          ListTile(
            leading: Image.asset("assets/images/house.png", height: 30.0, color: Colors.grey,),
            title: Text("Início"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: Image.asset("assets/images/sun.png", height: 30.0, color: Colors.grey,),
            title: Text("Litoral Central"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LitoralCentralPage()),
              );
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/boat-icon.png", height: 30.0, color: Colors.grey,),
            title: Text("Litoral Norte"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LitoralNortePage()),
              );
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/coconut-tree.png", height: 30.0, color: Colors.grey,),
            title: Text("Litoral Sul"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LitoralSulPage()),
              );
            },
          ),
          ListTile(
            leading: Image.asset("assets/images/power-button.png", height: 30.0, color: Colors.grey,),
            title: Text("Sair"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
