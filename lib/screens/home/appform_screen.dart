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
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                    color: Colors.grey,
                  ),
                ],
                color: Theme.of(context).accentColor,
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

class _AppformScreenState extends State<AppformScreen> {
  Awnswer _site = Awnswer.yes;
  Awnswer1 _site1 = Awnswer1.no;
  Gender _mf = Gender.f;
  Swim _sl = Swim.s;
  bool checkBoxValue = false;
  int idade;
  final _formkey = GlobalKey<FormState>();
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
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Theme.of(context).accentColor,
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'register'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50, top: 15),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "És novo na escola?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: ListTile(
                              title: const Text('Sim',
                                  style: TextStyle(fontFamily: 'Ubuntu')),
                              leading: Radio(
                                value: Awnswer.yes,
                                groupValue: _site,
                                onChanged: (Awnswer value) {
                                  setState(
                                    () {
                                      _site = value;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: ListTile(
                              title: const Text(
                                'Não',
                                style: TextStyle(fontFamily: 'Ubuntu'),
                              ),
                              leading: Radio(
                                value: Awnswer.no,
                                groupValue: _site,
                                onChanged: (Awnswer value) {
                                  setState(
                                    () {
                                      _site = value;
                                    },
                                  );
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
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50, right: 50),
                            child: TextFormField(
                              validator: (val) =>
                                  val.isEmpty ? 'Introduza um Nome!' : null,
                              keyboardType: TextInputType.text,
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50, top: 50),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Idade",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50, right: 50),
                            child: TextFormField(
                              validator: (val) {
                                if (val.isEmpty) {
                                  return "Introduza uma idade válida!";
                                } else if (int.tryParse(val) < 1 ||
                                    int.tryParse(val) > 99) {
                                  return "Introduza uma idade válida";
                                } else {
                                  val = idade.toString();
                                }
                              },
                              keyboardType: TextInputType.number,
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50, top: 50),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Nome do Encarregado",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50, right: 50),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 50, top: 50),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "És do género...",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: ListTile(
                              title: const Text('Feminino',
                                  style: TextStyle(fontFamily: 'Ubuntu')),
                              leading: Radio(
                                value: Gender.f,
                                groupValue: _mf,
                                onChanged: (Gender value) {
                                  setState(
                                    () {
                                      _mf = value;
                                    },
                                  );
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
                                  setState(
                                    () {
                                      _mf = value;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 50, top: 50, right: 30),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Como consideras o teu Nível de Natação?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: ListTile(
                              title: const Text(
                                'Não sei nadar',
                                style: TextStyle(fontFamily: 'Ubuntu'),
                              ),
                              leading: Radio(
                                value: Swim.ns,
                                groupValue: _sl,
                                onChanged: (Swim value) {
                                  setState(
                                    () {
                                      _sl = value;
                                    },
                                  );
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
                                  setState(
                                    () {
                                      _sl = value;
                                    },
                                  );
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
                                  setState(
                                    () {
                                      _sl = value;
                                    },
                                  );
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
                                  setState(
                                    () {
                                      _sl = value;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 50, top: 50, right: 30),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Praticas algum Desporto?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 15),
                            child: ListTile(
                              title: const Text('Sim',
                                  style: TextStyle(fontFamily: 'Ubuntu')),
                              leading: Radio(
                                value: Awnswer1.yes,
                                groupValue: _site1,
                                onChanged: (Awnswer1 value) {
                                  setState(
                                    () {
                                      _site1 = value;
                                    },
                                  );
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
                                  setState(
                                    () {
                                      _site1 = value;
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(left: 50, top: 50, right: 30),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Aceitas as Políticas e os Termos da Empresa?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Ubuntu',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 35, top: 15),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: checkBoxValue,
                                  onChanged: (bool value) {
                                    setState(
                                      () {
                                        checkBoxValue = value;
                                      },
                                    );
                                  },
                                ),
                                Text(
                                  "Aceito",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 25,
                                  ),
                                ),
                                FlatButton(
                                  child: Text(
                                    "Termos e Serviços",
                                    style: TextStyle(
                                      fontSize: 15,
                                      decoration: TextDecoration.underline,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  onPressed: () =>
                                      Navigator.pushNamed(context, 'terms'),
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
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Positioned(
                                    top: -25,
                                    right: 30,
                                    child: Container(
                                      child: FlatButton(
                                        child: Icon(Icons.arrow_forward,
                                            color: Colors.white),
                                        onPressed: () async {
                                          if (checkBoxValue == false) {
                                            createShowDialog(context, "Aviso",
                                                "Deve aceitar os termos da empresa para continuar!");
                                          } else if (_formkey.currentState
                                                  .validate() &&
                                              checkBoxValue != false) {
                                            Navigator.pushNamed(
                                                context, 'home');
                                          }
                                        },
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
