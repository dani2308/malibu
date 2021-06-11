import 'package:flutter/material.dart';

class ForecastDetailScreen extends StatefulWidget {
  ForecastDetailScreen({Key key}) : super(key: key);

  @override
  _ForecastDetailScreenState createState() => _ForecastDetailScreenState();
}

class _ForecastDetailScreenState extends State<ForecastDetailScreen> {
  createShowDialog(BuildContext context, String title, String content) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            title,
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            content,
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop();
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

  var hour = 0;
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
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () => {
                        if (hour <= 24 && hour >= 1)
                          {
                            setState(() => hour--),
                          }
                      },
                    ),
                    Text(
                      '$hour:00',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () => {
                        if (hour <= 23 && hour >= 0)
                          {
                            setState(() => hour++),
                          }
                      },
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
                          return createShowDialog(
                            context,
                            'Periodo',
                            'O Período é o intervalo de tempo, em segundos, entre duas ondulações.',
                          );
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
                          return createShowDialog(
                            context,
                            'Vento SSW 20',
                            'O vento é um dos formadores das ondas e influência o swell. É também um dos fatores mais importantes para o surf! ',
                          );
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
                          return createShowDialog(
                            context,
                            'Energia',
                            'A energia é uma função entre o tamanho e o período de uma onda e indica o poder da mesma.',
                          );
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
                          return createShowDialog(
                            context,
                            'Marés',
                            'As marés são movimentações da água dos oceanos geradas por forças gravitacionais do Sol e da Lua. Esses movimentos ocorrem aproximadamente de 6,2 em 6,2 horas. Depende de zona para zona a melhor altura da maré em que se tem as melhores condições para surfar.',
                          );
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
                          return createShowDialog(
                            context,
                            'Swell',
                            'O Swell é um tipo de formação de ondas, para além das formadas pelos ventos, estas são formadas em tempestades oceânicas.',
                          );
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
