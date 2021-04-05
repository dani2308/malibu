import 'package:flutter/material.dart';

class LanguageScreen extends StatefulWidget {
  LanguageScreen({Key key}) : super(key: key);

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

enum Language { pt, al, ch, es, fr, ig, it }

class _LanguageScreenState extends State<LanguageScreen> {
  Language _lang = Language.pt;
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
                    child: Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () => Navigator.pushNamed(context, ''),
                  ),
                  Text(
                    'Idioma',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 320,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Pesquisar por um idioma',
                      style: TextStyle(fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 50),
                child: Row(
                  children: [
                    Text(
                      'Português',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                    ),
                    Radio(
                      value: Language.pt,
                      groupValue: _lang,
                      onChanged: (Language value) {
                        setState(() {
                          _lang = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 355.0,
                      color: Colors.grey,
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
