import 'package:flutter/material.dart';

class TermsScreen extends StatefulWidget {
  TermsScreen({Key key}) : super(key: key);

  @override
  _TermsScreenState createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
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
                    onPressed: () => Navigator.pushNamed(context, 'appform'),
                  ),
                  Text(
                    'Termos',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 300,
                  child: Text(
                    'Com base na política da empresa, .......',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
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
