import 'package:app_turismo_tcc/src/pages/home_page.dart';
import 'package:app_turismo_tcc/src/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1, 0.4, 0.6, 0.9],
                  colors: [
                    Colors.white10,
                    Colors.blue,
                    Colors.indigo,
                    Colors.teal
                  ])),
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.transparent,),
              TextField(
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.transparent,),
              Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width / 1.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [Colors.blueAccent, Colors.greenAccent]
                  ),
                  borderRadius: BorderRadius.circular(50.0)
                ),
                child: SizedBox.expand(
                  child: FlatButton(
                    onPressed: _login,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("ENTRAR", style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 30.0,),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(color: Colors.transparent,),
              Text("Ou", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
              Container(
                height: 50.0,
                color: Colors.transparent,
                child: SizedBox.expand(
                  child: FlatButton(
                    onPressed: _goToRegisterPage,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Crie sua conta", style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),),
                        Icon(Icons.arrow_forward, color: Colors.white, size: 20.0,),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _login() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  _goToRegisterPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegisterPage(),
      ),
    );
  }
}
