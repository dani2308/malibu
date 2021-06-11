import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:malibu/screens/interface/class_screen.dart';
import 'package:malibu/screens/interface/news_screen.dart';
import 'package:malibu/screens/interface/forecast_screen.dart';
import 'package:malibu/screens/interface/profile_screen.dart';
import 'package:malibu/screens/interface/rentboard_screen.dart';
import 'package:malibu/screens/interface/rentwetsuit_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    ForecastScreen(),
    RentBoardScreen(),
    RentWetsuitScreen(),
    ClassScreen(),
    NewsScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 2.0,
              color: Colors.grey[300],
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/wave.png',
                width: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/board_icon.png',
                width: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/wetsuit.png',
                width: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/class.png',
                width: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/feed.png',
                width: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile.png',
                width: 30.0,
                color: Theme.of(context).primaryColor,
              ),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

