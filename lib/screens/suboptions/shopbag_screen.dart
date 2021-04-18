import 'package:flutter/material.dart';

class ShopBagScreen extends StatefulWidget {
  ShopBagScreen({Key key}) : super(key: key);

  @override
  _ShopBagScreenState createState() => _ShopBagScreenState();
}

class _ShopBagScreenState extends State<ShopBagScreen> {
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
                  Text(
                    'Saco de Compras',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Image.asset(
                            'assets/board.png',
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "SurfBoard Ocean - 7'0'",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Preço: 10€',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Quantidade: 2',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.close_rounded,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment(2, 0.0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 355.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 50, top: 10),
                          child: Image.asset(
                            'assets/board.png',
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "SurfBoard Ocean - 7'0'",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Preço: 10€',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Quantidade: 2',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.close_rounded,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment(2, 0.0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 355.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 50, top: 10),
                          child: Image.asset(
                            'assets/board.png',
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "SurfBoard Ocean - 7'0'",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Preço: 10€',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Quantidade: 2',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.close_rounded,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment(2, 0.0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 355.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 50, top: 10),
                          child: Image.asset(
                            'assets/board.png',
                            height: 150,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.0,
                          ),
                          child: Column(
                            children: [
                              Text(
                                "SurfBoard Ocean - 7'0'",
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Preço: 10€',
                                style: TextStyle(fontSize: 15),
                              ),
                              Text(
                                'Quantidade: 2',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Icon(
                            Icons.close_rounded,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment(2, 0.0),
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Container(
                            height: 1.0,
                            width: 355.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 50, bottom: 50),
                      child: Text(
                        'Total: 40€',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Text(
                          'Confirmar',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(
                      height: 50,
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
