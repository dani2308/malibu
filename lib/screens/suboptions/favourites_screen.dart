import 'package:flutter/material.dart';

class FavouritesScreen extends StatefulWidget {
  FavouritesScreen({Key key}) : super(key: key);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
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
                    'Favoritos',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 30.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 160,
                          height: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            overflow: Overflow.visible,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                heightFactor: 13.5,
                                widthFactor: 1.1,
                                child: Text("SoftBoard - Ocean 7'0"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 65),
                                child: Image.asset(
                                  'assets/board.png',
                                  height: 170,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(Icons.add),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 45, right: 5),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 15),
                          width: 160,
                          height: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            overflow: Overflow.visible,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                heightFactor: 13.5,
                                widthFactor: 1.1,
                                child: Text("SoftBoard - Ocean 7'0"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 65),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
                                  height: 170,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(Icons.add),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 45, right: 5),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 15),
                          width: 160,
                          height: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            overflow: Overflow.visible,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                heightFactor: 13.5,
                                widthFactor: 1.1,
                                child: Text("SoftBoard - Ocean 7'0"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 65),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
                                  height: 170,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(Icons.add),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 45, right: 5),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 160,
                          height: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            overflow: Overflow.visible,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                heightFactor: 13.5,
                                widthFactor: 1.1,
                                child: Text("SoftBoard - Ocean 7'0"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 65),
                                child: Image.asset(
                                  'assets/board.png',
                                  height: 170,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(Icons.add),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 45, right: 5),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 15),
                          width: 160,
                          height: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            overflow: Overflow.visible,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                heightFactor: 13.5,
                                widthFactor: 1.1,
                                child: Text("SoftBoard - Ocean 7'0"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 65),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
                                  height: 170,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(Icons.add),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 45, right: 5),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 15),
                          width: 160,
                          height: 230,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            overflow: Overflow.visible,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                heightFactor: 13.5,
                                widthFactor: 1.1,
                                child: Text("SoftBoard - Ocean 7'0"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 65),
                                child: Image.asset(
                                  'assets/board.png',
                                  height: 170,
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(Icons.add),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 45, right: 5),
                                child: Icon(
                                  Icons.favorite,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
