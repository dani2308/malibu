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
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: PopupMenu(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 100,
                    right: 0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.search_rounded,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, ''),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 0,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'favourites'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 0,
                    right: 30,
                  ),
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
            SizedBox(
              height: 40.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 10.0,
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
                                child: Text("RipCurl - Ebomb"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 50),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
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
                                child: Text("RipCurl - Ebomb"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 50),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
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
                                child: Text("RipCurl - Ebomb"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 50),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
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
                                child: Text("RipCurl - Ebomb"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 50),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
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
                                child: Text("RipCurl - Ebomb"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 50),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
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
                                child: Text("RipCurl - Ebomb"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 50),
                                child: Image.asset(
                                  'assets/realwetsuit.png',
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
      )),
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
    setState(
      () {
        liked = !liked;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        liked ? Icons.favorite : Icons.favorite_border,
        color: liked
            ? Theme.of(context).accentColor
            : Theme.of(context).primaryColor,
      ),
      onPressed: () => _pressed(),
    );
  }
}

enum MenuOption { Nome, Preco, Relevancia }

class PopupMenu extends StatelessWidget {
  const PopupMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Container(
        width: 88,
        height: 35,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 0, left: 30),
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border.all(
            color: Theme.of(context).primaryColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.0, 0.0),
              blurRadius: 1.0,
              spreadRadius: 1.0,
              color: Colors.grey,
            ),
          ],
        ),
        child: Text(
          'Filtros',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('Nome'),
            value: MenuOption.Nome,
          ),
          PopupMenuItem(
            child: Text('Preco'),
            value: MenuOption.Preco,
          ),
          PopupMenuItem(
            child: Text('Relevancia'),
            value: MenuOption.Relevancia,
          ),
        ];
      },
    );
  }
}
