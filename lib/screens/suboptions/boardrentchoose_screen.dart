import 'package:flutter/material.dart';

class BoardRentChooseScreen extends StatefulWidget {
  BoardRentChooseScreen({Key key}) : super(key: key);

  @override
  _BoardRentChooseScreenState createState() => _BoardRentChooseScreenState();
}

class _BoardRentChooseScreenState extends State<BoardRentChooseScreen> {
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset(
                  'assets/board.png',
                  width: 60,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 52),
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((50)),
                    topRight: Radius.circular((50)),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 270, left: 20),
                      child: Text(
                        "SoftBoard Ocean - 7'0'",
                        style: TextStyle(
                            fontFamily: 'Ubuntu', fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        bottom: 270,
                      ),
                      child: Icon(Icons.favorite_border),
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
