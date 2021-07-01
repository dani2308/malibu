import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  SecurityScreen({Key key}) : super(key: key);

  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  bool _value = true;
  bool _value1 = true;
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
                    'Segurança',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
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
                          'Ativar a autenticação através do Touch ID',
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
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 50, bottom: 12),
                      child: Container(
                        width: 350,
                        constraints:
                            BoxConstraints(maxWidth: 250, maxHeight: 130),
                        child: Text(
                          'Encriptação de Dados',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
                      child: Switch.adaptive(
                        value: _value1,
                        onChanged: (bool value) {
                          setState(
                            () {
                              _value1 = value;
                              if (value == false) {}
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
