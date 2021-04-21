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
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'home'),
                  ),
                  Text(
                    'Idioma',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 80, right: 90, top: 2),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.search_outlined,
                              color: Theme.of(context).primaryColor,
                            ),
                            Text(
                              'Pesquisar por um Idioma',
                              style:
                                  TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 15),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Container(
                              height: 1.0,
                              width: 250.0,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 40, right: 20),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Português',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                      Radio(
                        value: Language.pt,
                        groupValue: _lang,
                        onChanged: (Language value) {
                          setState(
                            () {
                              _lang = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _lang = Language.pt;
                    });
                  },
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Alemão',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                      Radio(
                        value: Language.al,
                        groupValue: _lang,
                        onChanged: (Language value) {
                          setState(
                            () {
                              _lang = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _lang = Language.al;
                    });
                  },
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Chinês',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                      Radio(
                        value: Language.ch,
                        groupValue: _lang,
                        onChanged: (Language value) {
                          setState(
                            () {
                              _lang = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _lang = Language.ch;
                    });
                  },
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Espanhol',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                      Radio(
                        value: Language.es,
                        groupValue: _lang,
                        onChanged: (Language value) {
                          setState(
                            () {
                              _lang = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _lang = Language.es;
                    });
                  },
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Francês',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                      Radio(
                        value: Language.fr,
                        groupValue: _lang,
                        onChanged: (Language value) {
                          setState(
                            () {
                              _lang = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _lang = Language.fr;
                    });
                  },
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Inglês',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                      Radio(
                        value: Language.ig,
                        groupValue: _lang,
                        onChanged: (Language value) {
                          setState(
                            () {
                              _lang = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _lang = Language.ig;
                    });
                  },
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Italiano',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                      Radio(
                        value: Language.it,
                        groupValue: _lang,
                        onChanged: (Language value) {
                          setState(
                            () {
                              _lang = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    setState(() {
                      _lang = Language.it;
                    });
                  },
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
