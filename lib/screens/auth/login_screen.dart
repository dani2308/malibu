import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    FlatButton(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Login",
                        style: TextStyle(fontFamily: 'Ubuntu'),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'login'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FlatButton(
                      child: Text("Registar",
                          style: TextStyle(fontFamily: 'Ubuntu')),
                      onPressed: () => Navigator.pushNamed(context, 'register'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 120),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Bem-vindo de volta,",
                      style: TextStyle(fontSize: 25, fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "NOME",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 60),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Email",
                      style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 300.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 60),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Palavra-passe",
                      style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20, top: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 300.0,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 25),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Esqueceu a palavra-passe?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 180),
                  child: SizedBox(
                    width: 400,
                    height: 400,
                    child: Stack(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          width: 400,
                          height: 75,
                          color: Theme.of(context).primaryColor,
                        ),
                        Positioned(
                          top: -25,
                          right: 30,
                          child: Container(
                            child: FlatButton(
                              child: Icon(Icons.arrow_forward,
                                  color: Colors.white),
                              onPressed: () =>
                                  Navigator.pushNamed(context, 'home'),
                            ),
                            width: 90,
                            height: 55,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Theme.of(context).accentColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
