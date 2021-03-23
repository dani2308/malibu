import 'package:flutter/material.dart';

class RentWetsuitScreen extends StatefulWidget {
  RentWetsuitScreen({Key key}) : super(key: key);

  @override
  _RentWetsuitScreenState createState() => _RentWetsuitScreenState();
}

class _RentWetsuitScreenState extends State<RentWetsuitScreen> {
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
                  padding: EdgeInsets.only(top: 18, left: 33),
                  child: Icon(Icons.search_rounded),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18, left: 15),
                  child: Icon(Icons.favorite_border),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18, left: 15),
                  child: Icon(Icons.shopping_bag_outlined),
                ),
              ],
            ),
            Row(
              children: [
                FlatButton(
                  padding: EdgeInsets.only(left: 40, top: 40),
                  child: Text(
                    "Pranchas",
                    style: TextStyle(fontFamily: 'Ubuntu'),
                  ),
                  onPressed: () => Navigator.pushNamed(context, 'rentboard'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                FlatButton(
                  padding: EdgeInsets.only(left: 40, top: 40),
                  child: Text(
                    "Fatos",
                    style: TextStyle(fontFamily: 'Ubuntu'),
                  ),
                  onPressed: () => Navigator.pushNamed(context, 'rentwetsuit'),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(top: 25, left: 40),
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Text('Filtros'),
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
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
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
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
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
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
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
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
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
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
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
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(10.0),
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
      )),
    );
  }
}
