import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:image_picker/image_picker.dart';
import 'package:malibu/store/user.store.dart';
import 'package:malibu/widgets/changethemebutton.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  FlutterLocalNotificationsPlugin localNotification;
  bool _value = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var androidInitialize = new AndroidInitializationSettings('boardlogo');
    var iOSInitialize = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        android: androidInitialize, iOS: iOSInitialize);
    localNotification = new FlutterLocalNotificationsPlugin();
    localNotification.initialize(initializationSettings);
  }

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
      "channelId",
      "Local Notification",
      "Descrição",
      importance: Importance.high,
    );
    var iosDetails = new IOSNotificationDetails();
    var generalNotificationsDetails = new NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
    await localNotification.show(
        0,
        "Notificações Ativas!",
        "As notificações estão ativas a partir de agora. Caso queira deixar de receber, basta desativar a opção das notificações.",
        generalNotificationsDetails);
  }

  createShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Terminar Sessão',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            'Deseja mesmo Terminar Sessão?',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {},
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
                  'Sim',
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    fontSize: 17,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop('Terminar Sessão');
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
                  color: Colors.grey,
                ),
                child: Text(
                  'Não',
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

  @override
  Widget imageProfile() {
    return Align(
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
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: CircleAvatar(
                backgroundImage: _imageFile == null
                    ? AssetImage("assets/mii.png")
                    : FileImage(
                        File(
                          _imageFile.path,
                        ),
                      ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 10,
              child: InkWell(
                onTap: () {
                  showBottomSheet(
                    context: context,
                    builder: ((builder) => bottomSheet()),
                  );
                },
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: 500.0,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Escolha uma foto de Perfil",
              style: TextStyle(
                  fontSize: 17.0, fontFamily: 'Ubuntu', color: Colors.white),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                },
                icon: Icon(
                  Icons.camera,
                  color: Colors.white,
                ),
                label: Text(
                  'Câmara',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              FlatButton.icon(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                },
                icon: Icon(
                  Icons.image,
                  color: Colors.white,
                ),
                label: Text(
                  'Galeria',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0.0, 0.0),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            color: Theme.of(context).primaryColor,
          ),
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  Widget build(BuildContext context) {
    final UserMob userMob = Provider.of<UserMob>(context);
    return SingleChildScrollView(
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
            imageProfile(),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "${userMob.user.email}",
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
                    child: Container(
                      height: 20,
                      width: 110,
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText: '${userMob.user.email}',
                        ),
                        style: TextStyle(
                          fontFamily: 'Ubuntu',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, left: 5),
                  child: Icon(
                    Icons.create_rounded,
                    size: 20,
                    color: Theme.of(context).primaryColor,
                  ),
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
                    fontFamily: 'Ubuntu',
                    fontSize: 15,
                    color: Theme.of(context).accentColor,
                  ),
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
                      fontFamily: 'Ubuntu',
                      fontSize: 15,
                      color: Theme.of(context).accentColor),
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
                      fontFamily: 'Ubuntu',
                      fontSize: 15,
                      color: Theme.of(context).accentColor),
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
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Icon(
                      Icons.notifications_none,
                      color: Colors.white,
                      size: 26,
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
                  padding: EdgeInsets.only(top: 45, left: 75),
                  child: Switch.adaptive(
                    value: _value,
                    onChanged: (bool value) {
                      setState(
                        () {
                          _value = value;
                          if (value == true) {
                            _showNotification();
                          }
                        },
                      );
                    },
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
                      color: Theme.of(context).primaryColor,
                    ),
                    child: Icon(
                      Icons.bedtime_outlined,
                      color: Colors.white,
                      size: 26,
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
                  padding: EdgeInsets.only(left: 68),
                  child: ChangeThemeButtonWidget(),
                ),
              ],
            ),
            FlatButton(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25, top: 20),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Icon(
                          Icons.lock_outlined,
                          size: 26,
                          color: Colors.white,
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
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
                onPressed: () => Navigator.pushNamed(context, 'privacy')),
            FlatButton(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        Icons.translate_outlined,
                        size: 26,
                        color: Colors.white,
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
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              onPressed: () => Navigator.pushNamed(context, 'language'),
            ),
            FlatButton(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        Icons.verified_user_outlined,
                        size: 26,
                        color: Colors.white,
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
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              onPressed: () => Navigator.pushNamed(context, 'security'),
            ),
            FlatButton(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        Icons.help_outline,
                        size: 26,
                        color: Colors.white,
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
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              onPressed: () => Navigator.pushNamed(context, 'help'),
            ),
            FlatButton(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 25, top: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        size: 26,
                        color: Colors.white,
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
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ],
              ),
              onPressed: () => Navigator.pushNamed(context, 'pack'),
            ),
            SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
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
                alignment: Alignment.center,
                child: FlatButton(
                  child: Text(
                    'Terminar Sessão',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontFamily: 'Ubuntu',
                    ),
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.popAndPushNamed(context, 'login');
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class Toggle extends StatefulWidget {
  @override
  PostState createState() => new PostState();
}

class PostState extends State<Toggle> {
  bool toggled = false;

  _pressed() {
    setState(() {
      toggled = !toggled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        toggled ? Icons.toggle_on : Icons.toggle_off_outlined,
        color: toggled
            ? Theme.of(context).accentColor
            : Theme.of(context).accentColor,
        size: 50,
      ),
      onPressed: () => _pressed(),
    );
  }
}
