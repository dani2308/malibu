import 'package:flutter/material.dart';

class ForecastDetailScreen extends StatefulWidget {
  ForecastDetailScreen({Key key}) : super(key: key);

  @override
  _ForecastDetailScreenState createState() => _ForecastDetailScreenState();
}

class _ForecastDetailScreenState extends State<ForecastDetailScreen> {
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
                    child: Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () => Navigator.pushNamed(context, ''),
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
                    Icon(Icons.arrow_back_ios_rounded),
                    Text(
                      '9:00',
                      style: TextStyle(fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 80, top: 50),
                    child: Image.asset(
                      'assets/wave.png',
                      width: 100.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 50),
                    child: Text(
                      '2.1 m / W',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 30),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 70),
                    child: Text(
                      'Período 15',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 5),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 50),
                    child: Text(
                      'Vento SSW 20',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 5),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 70),
                    child: Text(
                      'Energia 900',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 5),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 45),
                    child: Column(
                      children: [
                        Text(
                          'Maré Alta 2:15',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Maré Baixa 8:27',
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 5),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 70),
                    child: Text(
                      'Swell',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Image.asset('assets/swell.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
