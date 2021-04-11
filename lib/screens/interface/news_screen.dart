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
                  margin: EdgeInsets.only(top: 50, left: 25),
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('assets/pipe.png'),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).primaryColor,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 10,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 350,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 20),
                                    child: Text(
                                      'Woowwwwww!!!',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                      ),
                                      iconSize: 20,
                                      padding: EdgeInsets.only(left: 20),
                                      alignment: Alignment.bottomLeft,
                                      onPressed: null),
                                  IconButton(
                                      icon: Icon(
                                        Icons.comment_outlined,
                                        color: Colors.white,
                                      ),
                                      iconSize: 20,
                                      padding: EdgeInsets.only(left: 10),
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
                  margin: EdgeInsets.only(top: 25, left: 25),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 350,
                          height: 95,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 25, left: 20),
                                    child: Text(
                                      'Woowwwwww!!!',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    IconButton(
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                        iconSize: 20,
                                        alignment: Alignment.bottomLeft,
                                        onPressed: null),
                                    IconButton(
                                        icon: Icon(
                                          Icons.comment_outlined,
                                          color: Colors.white,
                                        ),
                                        iconSize: 20,
                                        alignment: Alignment.bottomLeft,
                                        onPressed: null),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 10,
                              color: Colors.white),
                          textAlign: TextAlign.center,
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
                  margin: EdgeInsets.only(top: 25, left: 25),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 350,
                          height: 95,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 25, left: 20),
                                    child: Text(
                                      'Woowwwwww!!!',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    IconButton(
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                        iconSize: 20,
                                        alignment: Alignment.bottomLeft,
                                        onPressed: null),
                                    IconButton(
                                        icon: Icon(
                                          Icons.comment_outlined,
                                          color: Colors.white,
                                        ),
                                        iconSize: 20,
                                        alignment: Alignment.bottomLeft,
                                        onPressed: null),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 10,
                              color: Colors.white),
                          textAlign: TextAlign.center,
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
                  margin: EdgeInsets.only(top: 25, left: 25),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 350,
                          height: 95,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 25, left: 20),
                                    child: Text(
                                      'Woowwwwww!!!',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  children: [
                                    IconButton(
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.white,
                                        ),
                                        iconSize: 20,
                                        alignment: Alignment.bottomLeft,
                                        onPressed: null),
                                    IconButton(
                                        icon: Icon(
                                          Icons.comment_outlined,
                                          color: Colors.white,
                                        ),
                                        iconSize: 20,
                                        alignment: Alignment.bottomLeft,
                                        onPressed: null),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 10,
                              color: Colors.white),
                          textAlign: TextAlign.center,
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
                  margin: EdgeInsets.only(top: 25, left: 25),
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    overflow: Overflow.visible,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('assets/pipe.png'),
                      ),
                      Container(
                        width: 60,
                        height: 20,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Theme.of(context).primaryColor,
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Username',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontSize: 10,
                              color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          width: 350,
                          height: 90,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Theme.of(context).primaryColor,
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 15, left: 20),
                                    child: Text(
                                      'Woowwwwww!!!',
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 15,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  IconButton(
                                      icon: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                      ),
                                      iconSize: 20,
                                      padding: EdgeInsets.only(left: 20),
                                      alignment: Alignment.bottomLeft,
                                      onPressed: null),
                                  IconButton(
                                      icon: Icon(
                                        Icons.comment_outlined,
                                        color: Colors.white,
                                      ),
                                      iconSize: 20,
                                      padding: EdgeInsets.only(left: 10),
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
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(top: 30, right: 20),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: IconButton(
                      icon: Icon(
                        Icons.create_rounded,
                        color: Colors.white,
                      ),
                      iconSize: 30,
                      alignment: Alignment.center,
                      onPressed: null),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
