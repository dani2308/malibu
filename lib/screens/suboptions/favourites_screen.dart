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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlatButton(
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'home'),
                  ),
                  Text(
                    'Favoritos',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 160),
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
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  top: 40.0,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        FlatButton(
                          child: Container(
                            margin: EdgeInsets.only(left: 0),
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
                                  padding:
                                      EdgeInsets.only(bottom: 10, right: 58),
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
                                Row(
                                  children: [
                                    Post(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'boardrentchoose'),
                        ),
                        FlatButton(
                          child: Container(
                            margin: EdgeInsets.only(left: 0, top: 15),
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
                                  padding:
                                      EdgeInsets.only(bottom: 10, right: 58),
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
                                Row(
                                  children: [
                                    Post(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'boardrentchoose'),
                        ),
                        FlatButton(
                          child: Container(
                            margin: EdgeInsets.only(left: 0, top: 15),
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
                                  padding:
                                      EdgeInsets.only(bottom: 10, right: 58),
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
                                Row(
                                  children: [
                                    Post(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'boardrentchoose'),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        FlatButton(
                          child: Container(
                            margin: EdgeInsets.only(left: 0, top: 0),
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
                                  padding:
                                      EdgeInsets.only(bottom: 10, right: 58),
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
                                Row(
                                  children: [
                                    Post(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'boardrentchoose'),
                        ),
                        FlatButton(
                          child: Container(
                            margin: EdgeInsets.only(left: 0, top: 15),
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
                                  padding:
                                      EdgeInsets.only(bottom: 10, right: 58),
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
                                Row(
                                  children: [
                                    Post(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'boardrentchoose'),
                        ),
                        FlatButton(
                          child: Container(
                            margin: EdgeInsets.only(left: 0, top: 15),
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
                                  padding:
                                      EdgeInsets.only(bottom: 10, right: 58),
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
                                Row(
                                  children: [
                                    Post(),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'boardrentchoose'),
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

class Post extends StatefulWidget {
  @override
  PostState createState() => new PostState();
}

class PostState extends State<Post> {
  bool liked = false;

  _pressed() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        liked ? Icons.favorite_border : Icons.favorite,
        color: liked
            ? Theme.of(context).primaryColor
            : Theme.of(context).accentColor,
      ),
      onPressed: () => _pressed(),
    );
  }
}
