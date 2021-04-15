import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                    child: Text(
                      "Registar",
                      style: TextStyle(fontFamily: 'Ubuntu'),
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'register'),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(left: 37, top: 120),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Olá,",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Ubuntu'),
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 37, top: 10, right: 35),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Introduza os dados nos campos abaixo ou entre com uma conta social",
                        style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                      ))),
              Padding(
                  padding: EdgeInsets.only(left: 37, top: 60),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                      ))),
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
                      ))),
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
                        "Palavra-passe novamente",
                        style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                      ))),
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
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.only(top: 128),
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
                            child:
                                Icon(Icons.arrow_forward, color: Colors.white),
                            onPressed: () =>
                                Navigator.pushNamed(context, 'appform'),
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
    );
  }
}
