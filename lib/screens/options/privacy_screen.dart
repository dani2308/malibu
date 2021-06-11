import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  PrivacyScreen({Key key}) : super(key: key);

  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  FlatButton(
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'home'),
                  ),
                  Text(
                    'Privacidade',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70, left: 50),
                      child: Text(
                        'Trocar email associado',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 355.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70, left: 50),
                      child: Text(
                        'Trocar palavra-passe',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 355.0,
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 70, left: 50),
                      child: Container(
                        width: 350,
                        constraints:
                            BoxConstraints(maxWidth: 250, maxHeight: 130),
                        child: Text(
                          'Permitir que outros vejam o seu perfil',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10, left: 10),
                      child: Toggle(),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 355.0,
                      color: Colors.grey[300],
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
}

class Toggle extends StatefulWidget {
  @override
  PostState createState() => new PostState();
}

class PostState extends State<Toggle> {
  bool toggled = false;

  _pressed() {
    setState(
      () {
        toggled = !toggled;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        toggled ? Icons.toggle_on : Icons.toggle_off_outlined,
        color: toggled
            ? Theme.of(context).accentColor
            : Theme.of(context).accentColor,
        size: 50,
      ),
      onPressed: () => _pressed(),
    );
  }
}
