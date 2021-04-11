import 'package:flutter/material.dart';

class PayScreen extends StatefulWidget {
  PayScreen({Key key}) : super(key: key);

  @override
  _PayScreenState createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
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
                    onPressed: () => Navigator.pushNamed(context, ''),
                  ),
                  Text(
                    'Mensal',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 300,
                  child: Text(
                    'Este pack oferece duas aulas por semana sendo estas sábado e domingo.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  'Época alta (maio a setembro): 90€',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  'Época baixa (outubro a abril): 55€',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 70,
                  bottom: 30.0,
                ),
                child: FlatButton(
                  onPressed: () => Navigator.popAndPushNamed(context, ''),
                  child: Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Adquirir',
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).primaryColor,
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
