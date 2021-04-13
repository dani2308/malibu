import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class RentBoardScreen extends StatefulWidget {
  RentBoardScreen({Key key}) : super(key: key);

  @override
  _RentBoardScreenState createState() => _RentBoardScreenState();
}

class _RentBoardScreenState extends State<RentBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 220,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, left: 8),
                    child: IconButton(
                      icon: Icon(
                        Icons.search_rounded,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () => Navigator.pushNamed(context, ''),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, left: 0),
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () =>
                          Navigator.pushNamed(context, 'favourites'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12, left: 0),
                    child: IconButton(
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'shopbag'),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 25, left: 33),
                  padding: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: Text(
                    'Filtros',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              // ! FlatButton.icon();
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  top: 10.0,
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
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
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
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Theme.of(context).primaryColor,
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
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
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
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Theme.of(context).primaryColor,
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
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
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
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Theme.of(context).primaryColor,
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
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
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
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Theme.of(context).primaryColor,
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
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
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
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Theme.of(context).primaryColor,
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
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
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
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Theme.of(context).primaryColor,
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
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
