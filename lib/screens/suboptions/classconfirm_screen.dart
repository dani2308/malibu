import 'package:flutter/material.dart';

class ClassConfirmScreen extends StatefulWidget {
  ClassConfirmScreen({Key key}) : super(key: key);

  @override
  _ClassConfirmScreenState createState() => _ClassConfirmScreenState();
}

class _ClassConfirmScreenState extends State<ClassConfirmScreen> {
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
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/mii.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 45),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/mii.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75),
                child: Text(
                  'Aulas para: Iniciantes e Avançados',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Local: Matosinhos',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Ponto de Encontro: Malibu Escola de Surf',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Horário: 10:00 às 11:30',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 50,
                  bottom: 30.0,
                ),
                child: FlatButton(
                  onPressed: () => Navigator.popAndPushNamed(context, ''),
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Confirmar',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                      ),
                    ),
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
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
