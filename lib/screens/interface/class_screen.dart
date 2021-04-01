import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ClassScreen extends StatefulWidget {
  ClassScreen({Key key}) : super(key: key);

  @override
  _ClassScreenState createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  CalendarController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, bottom: 30),
                  child: Image.asset(
                    'assets/logo.png',
                    width: 220,
                  ),
                ),
              ],
            ),
            TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                todayColor: Colors.blue, //? marca o dia de hoje
                selectedColor: Colors.yellow, //? marca o dia selecionado
                outsideWeekendStyle: //? propriedades dos dias do fim-de-semana
                    TextStyle(color: Colors.blue[200], fontFamily: 'Ubuntu'),
                outsideStyle:
                    TextStyle(color: Colors.blue[100]), //? dias do mes seguinte
                weekdayStyle:
                    TextStyle(fontFamily: 'Ubuntu'), //? dias da semana
                weekendStyle: //? fins de semana
                    TextStyle(fontFamily: 'Ubuntu', color: Colors.blue),
                contentPadding: EdgeInsets.only(
                    top: 20), //? espaço entre o mes e calendario
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    fontFamily: 'Ubuntu',
                    color: Colors.grey), //? segunda a sexta
                weekendStyle: TextStyle(
                    fontFamily: 'Ubuntu',
                    color: Colors.blue[900]), //? sabado e domingo
              ),
              headerStyle: HeaderStyle(
                //? propriedades do header
                titleTextStyle: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                formatButtonDecoration: BoxDecoration(
                  //? caixa display do calendario
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                formatButtonTextStyle: TextStyle(
                  //? texto dentro da caixa
                  fontFamily: 'Ubuntu',
                  color: Colors.white,
                ),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarController: _controller,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular((50)),
                  topRight: Radius.circular((50)),
                ),
                color: Colors.blue[900],
              ),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "Hoje",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Ubuntu',
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.check_mark_circled_solid,
                              color: Colors.green[200],
                              size: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aula',
                                    style: (TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Das 10:00 às 11:30',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'Ubuntu'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.clock_solid,
                              color: Colors.orange[300],
                              size: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tarefa 2',
                                    style: (TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Descrição da Tarfea 2',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'Ubuntu'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.clock_solid,
                              color: Colors.orange[300],
                              size: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tarefa 3',
                                    style: (TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Descrição da Tarfea 3',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'Ubuntu'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.check_mark_circled_solid,
                              color: Colors.green[200],
                              size: 30,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Tarefa 4',
                                    style: (TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Ubuntu',
                                      color: Colors.white,
                                    )),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Descrição da Tarfea 4',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'Ubuntu'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
