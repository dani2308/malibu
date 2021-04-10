import 'package:flutter/material.dart';

class AppformScreen extends StatefulWidget {
  AppformScreen({Key key}) : super(key: key);

  @override
  _AppformScreenState createState() => _AppformScreenState();
}

enum Awnswer { yes, no }
enum Awnswer1 { yes, no }
enum Gender { m, f }
enum Swim { ns, m, s, b, mb }

class _AppformScreenState extends State<AppformScreen> {
  Awnswer _site = Awnswer.yes;
  Awnswer1 _site1 = Awnswer1.no;
  Gender _mf = Gender.f;
  Swim _sl = Swim.s;
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            height: 1600,
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        FlatButton(
                          child: Icon(Icons.arrow_back_ios_rounded),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'register'),
                        ),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50, top: 15),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "És novo na escola?",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: ListTile(
                        title: const Text('Sim',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Awnswer.yes,
                          groupValue: _site,
                          onChanged: (Awnswer value) {
                            setState(() {
                              _site = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: const Text('Não',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Awnswer.no,
                          groupValue: _site,
                          onChanged: (Awnswer value) {
                            setState(() {
                              _site = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50, top: 50),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nome",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 50),
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
                        padding: EdgeInsets.only(left: 50, top: 50),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nome de Utilizador",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 50),
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
                        padding: EdgeInsets.only(left: 50, top: 50),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Idade",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 50),
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
                        padding: EdgeInsets.only(left: 50, top: 50),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nome do Encarregado",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 50),
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
                        padding: EdgeInsets.only(left: 50, top: 50),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "És do género...",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: ListTile(
                        title: const Text('Feminino',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Gender.f,
                          groupValue: _mf,
                          onChanged: (Gender value) {
                            setState(() {
                              _mf = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: const Text('Masculino',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Gender.m,
                          groupValue: _mf,
                          onChanged: (Gender value) {
                            setState(() {
                              _mf = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50, top: 50, right: 30),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Como consideras o teu Nível de Natação?",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: ListTile(
                        title: const Text('Não sei nadar',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Swim.ns,
                          groupValue: _sl,
                          onChanged: (Swim value) {
                            setState(() {
                              _sl = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: const Text('Mau',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Swim.m,
                          groupValue: _sl,
                          onChanged: (Swim value) {
                            setState(() {
                              _sl = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: const Text('Suficiente',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Swim.s,
                          groupValue: _sl,
                          onChanged: (Swim value) {
                            setState(() {
                              _sl = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: const Text('Bom',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Swim.b,
                          groupValue: _sl,
                          onChanged: (Swim value) {
                            setState(() {
                              _sl = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: const Text('Muito Bom',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Swim.mb,
                          groupValue: _sl,
                          onChanged: (Swim value) {
                            setState(() {
                              _sl = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50, top: 50, right: 30),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Praticas algum Desporto?",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 15),
                      child: ListTile(
                        title: const Text('Sim',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Awnswer1.yes,
                          groupValue: _site1,
                          onChanged: (Awnswer1 value) {
                            setState(() {
                              _site1 = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: ListTile(
                        title: const Text('Não',
                            style: TextStyle(fontFamily: 'Ubuntu')),
                        leading: Radio(
                          value: Awnswer1.no,
                          groupValue: _site1,
                          onChanged: (Awnswer1 value) {
                            setState(() {
                              _site1 = value;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 50, top: 50, right: 30),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Aceitas as Políticas e os Termos da Empresa?",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Ubuntu',
                              ),
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 35, top: 15),
                      child: Row(
                        children: [
                          Checkbox(
                              value: checkBoxValue,
                              onChanged: (bool value) {
                                setState(() {
                                  checkBoxValue = value;
                                });
                              }),
                          Text(
                            "Aceito",
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Ubuntu',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: SizedBox(
                        width: 400,
                        height: 75,
                        child: Stack(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              width: 400,
                              height: 75,
                              color: Colors.red,
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
                                color: Colors.blue,
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
        },
      ),
    );
  }
}
