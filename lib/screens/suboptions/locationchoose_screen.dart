import 'package:flutter/material.dart';

class LocationChooseScreen extends StatefulWidget {
  LocationChooseScreen({Key key}) : super(key: key);

  @override
  _LocationChooseScreenState createState() => _LocationChooseScreenState();
}

class _LocationChooseScreenState extends State<LocationChooseScreen> {
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
                    onPressed: () => Navigator.pushNamed(context, ''),
                  ),
                  Text(
                    'Locais',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  width: 320,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white,
                    border: Border.all(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 85, top: 2),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.search_outlined,
                                color: Theme.of(context).primaryColor,
                              ),
                              Text(
                                'Pesquisar por um Local',
                                style: TextStyle(
                                    fontFamily: 'Ubuntu', fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Azurara',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Ericeira',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Esmoriz',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Leça',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Maceda',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Nazaré',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Ofir',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
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
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Vila Praia de Âncora',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment(2, 0.0),
                child: Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 355.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
