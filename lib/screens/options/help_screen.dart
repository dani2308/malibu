import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  HelpScreen({Key key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
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
                    'Ajuda',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Text(
                  'Ao selecionar a opção abaixo será redirecionado para o nosso website.',
                  textAlign: TextAlign.center,
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
                        'Ajuda',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      ),
                    ),
                    width: 80,
                    height: 35,
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
