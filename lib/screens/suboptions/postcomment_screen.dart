import 'package:flutter/material.dart';

class PostCommentScreen extends StatefulWidget {
  PostCommentScreen({Key key}) : super(key: key);

  @override
  _PostCommentScreenState createState() => _PostCommentScreenState();
}

class _PostCommentScreenState extends State<PostCommentScreen> {
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
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/profile.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Mário Barroso',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 40),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      constraints:
                          BoxConstraints(maxHeight: 100, maxWidth: 320),
                      child: Text(
                        'Preparados para mais um fim-de-semana cheio de ondas? Sábado e Domingo às 10:30! Confirma a tua presença até as 19:00 do dia anterior. Aloha! Malibu.',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).accentColor,
                        ),
                        iconSize: 20,
                        alignment: Alignment.bottomLeft,
                        onPressed: null),
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/profile.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Paulo Sérgio',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 60),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      constraints:
                          BoxConstraints(maxHeight: 100, maxWidth: 320),
                      child: Text(
                        'Eu vou!!!',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).accentColor,
                        ),
                        iconSize: 20,
                        alignment: Alignment.bottomLeft,
                        onPressed: null),
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
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60, top: 20),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/profile.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Bruno Carvalho',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 60),
                child: Row(
                  children: [
                    Container(
                      width: 350,
                      constraints:
                          BoxConstraints(maxHeight: 100, maxWidth: 320),
                      child: Text(
                        'Eu também!',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).accentColor,
                        ),
                        iconSize: 20,
                        alignment: Alignment.bottomLeft,
                        onPressed: null),
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
                      color: Colors.grey[300],
                    ),
                  ),
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
