import 'package:flutter/material.dart';

class PrivacyScreen extends StatefulWidget {
  PrivacyScreen({Key key}) : super(key: key);

  @override
  _PrivacyScreenState createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
  bool _value = true;
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
                child: FlatButton(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 70, right: 90),
                        child: Text(
                          'Trocar email associado',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                        ),
                      ),
                      Container(
                        alignment: Alignment(2, 0.0),
                        child: Padding(
                          padding: EdgeInsets.only(top: 30, left: 20),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0),
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
                  onPressed: () {
                    return createShowDialog(
                      context,
                      'Aviso',
                      'Será redirecionado para o nosso website!',
                    );
                  },
                ),
              ),
              Container(
                child: FlatButton(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 70, right: 100),
                        child: Text(
                          'Trocar palavra-passe',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                        ),
                      ),
                      Container(
                        alignment: Alignment(2, 0.0),
                        child: Padding(
                          padding: EdgeInsets.only(top: 30, left: 20),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 0.0),
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
                  onPressed: () {
                    return createShowDialog(
                      context,
                      'Aviso',
                      'Será redirecionado para o nosso website!',
                    );
                  },
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
                      padding: const EdgeInsets.only(left: 10),
                      child: Switch.adaptive(
                        value: _value,
                        onChanged: (bool value) {
                          setState(
                            () {
                              _value = value;
                              if (value == false) {}
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
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
  createShowDialog(BuildContext context, String title, String content) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            content,
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      color: Colors.grey,
                    ),
                  ],
                  color: Theme.of(context).primaryColor,
                ),
                child: Text(
                  'Ok',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

