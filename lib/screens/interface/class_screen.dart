import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:malibu/store/user.store.dart';

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
    final UserMob _userMob = Provider.of<UserMob>(context);

    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Classes').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          print(snapshot.data.docs.first.get('hour'));

          if (!snapshot.hasData) return CircularProgressIndicator();

          return SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 30, bottom: 30),
                        child: Image.asset(
                          'assets/logo_text_color.png',
                          width: 220,
                        ),
                      ),
                    ],
                  ),
                  TableCalendar(
                    initialCalendarFormat: CalendarFormat.month,
                    calendarStyle: CalendarStyle(
                      todayColor: Theme.of(context)
                          .primaryColor, //? marca o dia de hoje
                      selectedColor: Theme.of(context)
                          .primaryColorLight, //? marca o dia selecionado
                      outsideWeekendStyle: //? propriedades dos dias do fim-de-semana
                          TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Ubuntu'), //? dias do mes seguinte
                      outsideStyle: TextStyle(
                          color: Colors.grey[400]), //? dias do mes passado
                      weekdayStyle:
                          TextStyle(fontFamily: 'Ubuntu'), //? dias da semana
                      weekendStyle: //? fins de semana
                          TextStyle(
                              fontFamily: 'Ubuntu',
                              color: Theme.of(context).accentColor),
                      contentPadding: EdgeInsets.only(
                          top: 20), //? espaço entre o mes e calendario
                    ),
                    daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 12,
                          color: Theme.of(context)
                              .primaryColor), //? segunda a sexta
                      weekendStyle: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 12,
                          color: Theme.of(context)
                              .primaryColor), //? sabado e domingo
                    ),
                    headerStyle: HeaderStyle(
                      //? propriedades do header
                      titleTextStyle: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 20,
                          color: Theme.of(context).primaryColor),
                      formatButtonDecoration: BoxDecoration(
                        //? caixa display do calendario
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),

                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 1.0,
                            spreadRadius: 1.0,
                            color: Colors.grey,
                          ),
                        ],
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
                    onDayLongPressed: (day, events, holidays) =>
                        Navigator.pushNamed(context, 'classconfirm'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular((50)),
                        topRight: Radius.circular((50)),
                      ),
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 50),
                              child: Text(
                                "Agenda",
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
                                    color: Theme.of(context).accentColor,
                                    size: 30,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintStyle:
                                                TextStyle(color: Colors.white),
                                            hintText: 'Título da Tarefa',
                                          ),
                                          style: (TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                          )),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            ),
                                            hintText: 'Horário da Tarefa',
                                          ),
                                          style: (TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                          )),
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
                                    color: Theme.of(context).primaryColorLight,
                                    size: 30,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    width:
                                        MediaQuery.of(context).size.width * 0.8,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintStyle:
                                                TextStyle(color: Colors.white),
                                            hintText: 'Título da Tarefa',
                                          ),
                                          style: (TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                          )),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintStyle: TextStyle(
                                              color: Colors.grey,
                                            ),
                                            hintText: 'Horário da Tarefa',
                                          ),
                                          style: (TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Ubuntu',
                                            color: Colors.white,
                                          )),
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
        });
  }
}
