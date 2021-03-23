import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 220,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80, left: 45),
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        width: 300,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('assets/pipe.png'),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 300,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 6, left: 10),
                                    child: Text(
                                      'Woowwwwww!!!',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu', fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(Icons.favorite_border),
                                      iconSize: 20,
                                      padding:
                                          EdgeInsets.only(left: 20, bottom: 10),
                                      alignment: Alignment.bottomLeft,
                                      onPressed: null),
                                  IconButton(
                                      icon: Icon(Icons.comment_outlined),
                                      iconSize: 20,
                                      padding:
                                          EdgeInsets.only(left: 10, bottom: 10),
                                      alignment: Alignment.bottomLeft,
                                      onPressed: null),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 45),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 300,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 20,
                                  padding: EdgeInsets.only(top: 50, left: 20),
                                  alignment: Alignment.bottomLeft,
                                  onPressed: null),
                              IconButton(
                                  icon: Icon(Icons.comment_outlined),
                                  iconSize: 20,
                                  padding: EdgeInsets.only(top: 50, left: 10),
                                  alignment: Alignment.bottomLeft,
                                  onPressed: null),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 45),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 300,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                  icon: Icon(Icons.favorite_border),
                                  iconSize: 20,
                                  padding: EdgeInsets.only(top: 50, left: 20),
                                  alignment: Alignment.bottomLeft,
                                  onPressed: null),
                              IconButton(
                                  icon: Icon(Icons.comment_outlined),
                                  iconSize: 20,
                                  padding: EdgeInsets.only(top: 50, left: 10),
                                  alignment: Alignment.bottomLeft,
                                  onPressed: null),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(top: 30, right: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.create_rounded),
                      iconSize: 30,
                      alignment: Alignment.center,
                      onPressed: null),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
