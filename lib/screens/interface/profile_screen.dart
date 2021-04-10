import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: Stack(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  overflow: Overflow.visible,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/mii.png"),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Colors.blue,
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Daniel Rodrigues',
                  style: TextStyle(
                      fontFamily: 'Ubuntu',
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  child: Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Dani_23',
                      style: TextStyle(
                        fontFamily: 'Ubuntu',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 5),
                  child: Icon(Icons.create_rounded, size: 20),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  'Aluno avançado',
                  style: TextStyle(
                      fontFamily: 'Ubuntu', fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  'Frequenta a ecola desde',
                  style: TextStyle(
                      fontFamily: 'Ubuntu', fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  '16/09/2018',
                  style: TextStyle(
                      fontFamily: 'Ubuntu', fontSize: 15, color: Colors.grey),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 50),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.notifications_none,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45, left: 20),
                  child: Text(
                    'Notificações',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 45, left: 85),
                  child: Icon(
                    Icons.toggle_off_outlined,
                    size: 50,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.bedtime_outlined,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Modo Escuro',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 78),
                  child: Icon(
                    Icons.toggle_off_outlined,
                    size: 50,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.lock_outlined,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Privacidade',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 100),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.translate_outlined,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Idioma',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 142),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.verified_user_outlined,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Segurança',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 108),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.help_outline,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Ajuda',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 150),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40, top: 20),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: Colors.blue,
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 20),
                  child: Text(
                    'Packs',
                    style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 150),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 30,
                  ),
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
                      'Terminar Sessão',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 17),
                    ),
                  ),
                  width: 160,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey,
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
