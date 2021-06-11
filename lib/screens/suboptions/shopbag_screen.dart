import 'package:flutter/material.dart';

class ShopBagScreen extends StatefulWidget {
  ShopBagScreen({Key key}) : super(key: key);

  @override
  _ShopBagScreenState createState() => _ShopBagScreenState();
}

class _ShopBagScreenState extends State<ShopBagScreen> {
  createShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Confirmado',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            'O seu pedido foi confirmado com Sucesso!',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop('Confirmado');
              },
              child: Container(
                alignment: Alignment.center,
                width: 50,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    5.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0.0, 0.0),
                      blurRadius: 1.0,
                      spreadRadius: 1.0,
                      color: Colors.grey,
                    ),
                  ],
                  color: Theme.of(context).accentColor,
                ),
                child: Text(
                  'Ok',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

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
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text(
                            'Confirmar',
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontFamily: 'Ubuntu',
                            ),
                          ),
                          onPressed: () {
                            createShowDialog(context);
                          },
                        ),
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
