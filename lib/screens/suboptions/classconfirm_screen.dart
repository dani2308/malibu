import 'package:flutter/material.dart';
import 'package:malibu/models/classes_model.dart';

class ClassConfirmScreen extends StatefulWidget {
  ClassConfirmScreen({Key key}) : super(key: key);

  @override
  _ClassConfirmScreenState createState() => _ClassConfirmScreenState();
}

class _ClassConfirmScreenState extends State<ClassConfirmScreen> {
  String teacher1 = 'Mário';
  String teacher2 = 'Filipe';
  String type = 'Aulas para: Iniciantes e Avançados';
  String spot = 'Local: Matosinhos';
  String encounter = 'Ponto de Encontro: Malibu Escola de Surf';
  String hour = 'Horário: 10:00 às 11:30';
  createShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Agendado',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            'O sua aula foi agendada, aguarde agora pela confirmação do professor',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop('Agendado');
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
                    'Quarta-feira',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Professores',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 75),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/mii.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          child: Text(
                            '$teacher1',
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/mii.png"),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 15,
                          ),
                          child: Text(
                            '$teacher2',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 65),
                child: Text(
                  '$type',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  '$spot',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  '$encounter',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  '$hour',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).primaryColor,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 1.0,
                        spreadRadius: 1.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                  alignment: Alignment.center,
                  child: FlatButton(
                    child: Text(
                      'Agendar',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontFamily: 'Ubuntu',
                      ),
                    ),
                    onPressed: () async {
                      createShowDialog(context);
                      await ClassSubmitService().classSumbit(
                        teacher1,
                        teacher2,
                        type,
                        spot,
                        encounter,
                        hour,
                      );
                      Navigator.pushNamed(context, 'home');
                    },
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
