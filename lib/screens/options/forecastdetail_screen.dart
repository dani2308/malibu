import 'package:flutter/material.dart';

class ForecastDetailScreen extends StatefulWidget {
  ForecastDetailScreen({Key key}) : super(key: key);

  @override
  _ForecastDetailScreenState createState() => _ForecastDetailScreenState();
}

class _ForecastDetailScreenState extends State<ForecastDetailScreen> {
  
  createShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Período',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            'O Período é o intervalo de tempo, em segundos, entre duas ondulações.',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop('Período');
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
                      blurRadius: 3.0,
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
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 50, right: 30, top: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Segunda',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      'Canidelo',
                      style: TextStyle(fontSize: 17),
                    ),
                    Text(
                      '12/02/2021',
                      style: TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    Text(
                      '9:00',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 80, top: 50),
                    child: Image.asset(
                      'assets/wave.png',
                      color: Theme.of(context).accentColor,
                      width: 100.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 50),
                    child: Column(
                      children: [
                        Text(
                          '2.1 m',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 30),
                        ),
                        Text(
                          'W',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: FlatButton(
                        child: Row(
                          children: [
                            Text(
                              'Período 15',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 17,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Theme.of(context).accentColor,
                              size: 15,
                            ),
                          ],
                        ),
                        onPressed: () {
                          createShowDialog(context);
                        },
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        child: Row(
                          children: [
                            Text(
                              'Vento SSW 20',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 17,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Theme.of(context).accentColor,
                              size: 15,
                            ),
                          ],
                        ),
                        onPressed: () {
                          createShowDialog(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 50, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: FlatButton(
                        child: Row(
                          children: [
                            Text(
                              'Energia 900',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 17,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Theme.of(context).accentColor,
                              size: 15,
                            ),
                          ],
                        ),
                        onPressed: () {
                          createShowDialog(context);
                        },
                      ),
                    ),
                    Container(
                      child: FlatButton(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Maré Alta 2:15',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                Text(
                                  'Maré Baixa 8:27',
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Ubuntu',
                                  ),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Theme.of(context).accentColor,
                              size: 15,
                            ),
                          ],
                        ),
                        onPressed: () {
                          createShowDialog(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, right: 30, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: FlatButton(
                        child: Row(
                          children: [
                            Text(
                              'Swell',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 17,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Theme.of(context).accentColor,
                              size: 15,
                            ),
                          ],
                        ),
                        onPressed: () {
                          createShowDialog(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Image.asset('assets/swell.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
