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
                    onPressed: () => Navigator.pushNamed(context, 'favourites'),
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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            // ! FlatButton.icon();
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
                                widthFactor: 1.4,
                                child: Text("Wetsuit - RipCurl"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 55),
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
                                widthFactor: 1.4,
                                child: Text("Wetsuit - RipCurl"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 55),
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
                                widthFactor: 1.4,
                                child: Text("Wetsuit - RipCurl"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 55),
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
                                widthFactor: 1.4,
                                child: Text("Wetsuit - RipCurl"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 55),
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
                                widthFactor: 1.4,
                                child: Text("Wetsuit - RipCurl"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 55),
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
                                widthFactor: 1.4,
                                child: Text("Wetsuit - RipCurl"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 10, right: 55),
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
