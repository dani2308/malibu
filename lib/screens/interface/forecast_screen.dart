import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:malibu/models/place_model.dart';
import 'package:provider/provider.dart';
import 'package:malibu/store/user.store.dart';

class ForecastScreen extends StatefulWidget {
  ForecastScreen({Key key}) : super(key: key);

  @override
  _ForecastScreenState createState() => _ForecastScreenState();
}

class _ForecastScreenState extends State<ForecastScreen> {
  @override
  Widget build(BuildContext context) {
    final UserMob _userMob = Provider.of<UserMob>(context);
    var userEmail = _userMob.user.email;

    Widget _buildLoadingBar() {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('Location')
          .where('user_email', isEqualTo: userEmail)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData)
          return _buildLoadingBar();
        else {
          List<Place> places = List<Place>();
          if (places == null) {
            print('daniel');
          }

          for (var item in snapshot.data.docs) {
            places.add(
              Place.fromJson(
                item.get('place'),
              ),
            );
          }

          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 30),
                          child: Image.asset(
                            'assets/logo_text_color.png',
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 40, left: 33),
                              child: Text(
                                '1.2',
                                style: TextStyle(fontSize: 25),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 33, top: 20),
                              child: Text(
                                'm',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 20),
                          child: Column(
                            children: [
                              Icon(Icons.location_on),
                              Padding(
                                padding: EdgeInsets.only(left: 8, top: 20),
                                child: Container(
                                  width: 80,
                                  child: Text(
                                    'Canidelo',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, left: 20),
                          child: FlatButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, 'forecastdetail'),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 10.0,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.brightness_low_outlined,
                                    color: Colors.black,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      "Forecast",
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40, right: 0),
                          child: FlatButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, 'livecam'),
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
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      "Em direto",
                                      style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    for (Place place in places) ...[
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 40, left: 33),
                                child: Text(
                                  place.size,
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 33, top: 20),
                                child: Text(
                                  place.unit,
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 40, left: 20),
                            child: Column(
                              children: [
                                Icon(Icons.location_on),
                                Padding(
                                  padding: EdgeInsets.only(left: 8, top: 20),
                                  child: Container(
                                    width: 80,
                                    child: Text(
                                      place.spot,
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 40, left: 20),
                            child: FlatButton(
                              onPressed: () => Navigator.pushNamed(
                                  context, 'forecastdetail'),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0.0, 0.0),
                                      blurRadius: 0.0,
                                      spreadRadius: 10.0,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.brightness_low_outlined,
                                      color: Colors.black,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        "Forecast",
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 40, right: 0),
                            child: FlatButton(
                              onPressed: () =>
                                  Navigator.pushNamed(context, 'livecam'),
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Text(
                                        "Em direto",
                                        style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          color: Colors.black,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                        bottom: 20.0,
                      ),
                      child: FlatButton(
                        onPressed: () => Navigator.popAndPushNamed(
                            context, 'locationchoose'),
                        child: Container(
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Adicione um Local',
                              style: TextStyle(
                                fontFamily: 'Ubuntu',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          width: 190,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
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
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
