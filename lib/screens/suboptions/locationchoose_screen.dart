import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:malibu/store/user.store.dart';

class LocationChooseScreen extends StatefulWidget {
  LocationChooseScreen({Key key}) : super(key: key);

  @override
  _LocationChooseScreenState createState() => _LocationChooseScreenState();
}

class _LocationChooseScreenState extends State<LocationChooseScreen> {
  @override
  Widget build(BuildContext context) {
    final UserMob _userMob = Provider.of<UserMob>(context);

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Spots').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        print(
          snapshot.data.docs.first.get('spot'),
        );

        if (!snapshot.hasData) return CircularProgressIndicator();

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
                        'Locais',
                        style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 30, left: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 50, right: 100),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(
                                    Icons.search_outlined,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                                Flexible(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: 'Pesquisar por um Local',
                                    ),
                                    keyboardType: TextInputType.text,
                                    style: TextStyle(
                                        fontSize: 15, fontFamily: 'Ubuntu'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
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
                  Column(
                    children: [
                      for (var spot in snapshot.data.docs) ...[
                        FlatButton(
                          child: Column(
                            children: [
                              Container(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: Text(
                                      spot.get('spot'),
                                      style: TextStyle(
                                          fontFamily: 'Ubuntu',
                                          fontSize: 20,
                                          color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment(2, 0.0),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Container(
                                      height: 1.0,
                                      width: 355.0,
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          onPressed: () async {
                            var userEmail = _userMob.user.email;
                            FirebaseFirestore.instance
                                .collection('Location')
                                .add({
                              'user_email': userEmail,
                              'place': {
                                'energy': spot.get('energy'),
                                'high': spot.get('high'),
                                'low': spot.get('low'),
                                'period': spot.get('period'),
                                'size': spot.get('size'),
                                'unit': spot.get('unit'),
                                'video': spot.get('video'),
                                'wind': spot.get('wind'),
                                'spot': spot.get('spot'),
                                'id': spot.get('id')
                              }
                            }).then((value) {
                              Navigator.popAndPushNamed(context, 'home');
                            });
                          },
                        ),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
