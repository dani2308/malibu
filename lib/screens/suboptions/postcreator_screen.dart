import 'package:flutter/material.dart';

class PostCreatorScreen extends StatefulWidget {
  PostCreatorScreen({Key key}) : super(key: key);

  @override
  _PostCreatorState createState() => _PostCreatorState();
}

class _PostCreatorState extends State<PostCreatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FlatButton(
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'home'),
                    ),
                    Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'Postar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, top: 40),
                child: Row(
                  children: [
                    Text(
                      '+   Adicionar Foto',
                      style: TextStyle(
                        fontSize: 17,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40, top: 40),
                child: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
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
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Escreva um comentário...',
                        style: TextStyle(fontSize: 17, color: Colors.grey),
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
