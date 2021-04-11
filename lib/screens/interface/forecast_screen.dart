import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ForecastScreen extends StatefulWidget {
  ForecastScreen({Key key}) : super(key: key);

  @override
  _ForecastScreenState createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
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
            Container(
              alignment: Alignment(2, 0.0),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
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
                  padding: EdgeInsets.only(top: 40, left: 33),
                  child: Text('1.2', style: TextStyle(fontSize: 25)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 50),
                  child: Icon(Icons.location_on, size: 35),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 50),
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, ''),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 10.0,
                              color: Colors.white),
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.brightness_low_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "Forecast",
                            style: TextStyle(fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 0),
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, ''),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 10.0,
                              color: Colors.white),
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.videocam,
                            color: Colors.black,
                          ),
                          Text(
                            "Em direto",
                            style: TextStyle(fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text('m', style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text('Matosinhos', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Container(
              alignment: Alignment(2, 0.0),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
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
                  padding: EdgeInsets.only(top: 40, left: 33),
                  child: Text('2.1', style: TextStyle(fontSize: 25)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 50),
                  child: Icon(Icons.location_on, size: 35),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 50),
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, ''),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 10.0,
                              color: Colors.white),
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.brightness_low_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "Forecast",
                            style: TextStyle(fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 0),
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, ''),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 10.0,
                              color: Colors.white),
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.videocam,
                            color: Colors.black,
                          ),
                          Text(
                            "Em direto",
                            style: TextStyle(fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text('m', style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text('Canidelo', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Container(
              alignment: Alignment(2, 0.0),
              child: Padding(
                padding: EdgeInsets.only(top: 50),
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
                  padding: EdgeInsets.only(top: 40, left: 33),
                  child: Text('1.9', style: TextStyle(fontSize: 25)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 50),
                  child: Icon(Icons.location_on, size: 35),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 50),
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, ''),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 10.0,
                              color: Colors.white),
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.brightness_low_outlined,
                            color: Colors.black,
                          ),
                          Text(
                            "Forecast",
                            style: TextStyle(fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 65, left: 0),
                  child: FlatButton(
                    onPressed: () => Navigator.pushNamed(context, ''),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 10.0,
                              color: Colors.white),
                        ],
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.videocam,
                            color: Colors.black,
                          ),
                          Text(
                            "Em direto",
                            style: TextStyle(fontFamily: 'Ubuntu'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 45),
                  child: Text('m', style: TextStyle(fontSize: 15)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 53),
                  child: Text('Espinho', style: TextStyle(fontSize: 15)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                bottom: 20.0,
              ),
              child: FlatButton(
                onPressed: () => Navigator.popAndPushNamed(context, ''),
                child: Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Adicione um Local',
                      style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 17,
                          color: Colors.white),
                    ),
                  ),
                  width: 170,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
