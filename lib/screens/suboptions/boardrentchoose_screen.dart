import 'package:flutter/material.dart';
import 'package:malibu/theme.dart';

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
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'home'),
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
              SizedBox(
                height: 52.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((50)),
                    topRight: Radius.circular((50)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "SoftBoard Ocean - 7'0'",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                        right: 30.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 30,
                                height: 30,
                                child: FlatButton(
                                  onPressed: () => {},
                                  color: Theme.of(context).accentColor,
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                    size: 12.0,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).accentColor,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                child: FlatButton(
                                  onPressed: () => {},
                                  color: Theme.of(context).accentColor,
                                  padding: EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            "15.00€",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 23.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50.0,
                        left: 10.0,
                      ),
                      child: Text(
                        "Hello world, aqui está a minha descrição",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
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
  }
}
