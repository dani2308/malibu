import 'package:flutter/material.dart';
import 'package:malibu/screens/auth/authentication.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  createShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Palavra-Passe',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            'Será enviado para o seu email uma mensagem que permitirá que altere a sua palavra-passe.',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop('Palavra-Passe');
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
                      blurRadius: 3.0,
                      spreadRadius: 1.0,
                      color: Colors.grey,
                    ),
                  ],
                  color: Theme.of(context).accentColor,
                ),
                child: Text(
                  'OK',
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    FlatButton(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Login",
                        style: TextStyle(fontFamily: 'Ubuntu'),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'login'),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    FlatButton(
                      child: Text(
                        "Registar",
                        style: TextStyle(fontFamily: 'Ubuntu'),
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'register'),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 120),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Bem-vindo de volta,",
                      style: TextStyle(fontSize: 25, fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 37, top: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Daniel",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Ubuntu'),
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 37, top: 60),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 50,
                            ),
                            child: TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(
                                labelText: 'Email',
                              ),
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                              keyboardType: TextInputType.emailAddress,
                              /*onChanged: (val) {
                                setState(() => emailController = val);
                              },*/
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 37, top: 30),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              right: 50,
                            ),
                            child: TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                labelText: 'Palavra-passe',
                              ),
                              keyboardType: TextInputType.text,
                              obscureText: true,
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                              /*onChanged: (val) {
                                setState(() => password = val);
                              },*/
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 23, top: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextButton(
                            child: Text(
                              "Esqueceu-se da palavra-passe?",
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Theme.of(context).primaryColor,
                                fontFamily: 'Ubuntu',
                              ),
                            ),
                            onPressed: () {
                              createShowDialog(context);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                      ),
                      SizedBox(
                        width: 400,
                        height: 75,
                        child: Stack(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          overflow: Overflow.visible,
                          children: [
                            Container(
                              width: 400,
                              height: 75,
                              color: Theme.of(context).primaryColor,
                            ),
                            Positioned(
                              top: -25,
                              right: 30,
                              child: Container(
                                child: FlatButton(
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white),
                                  onPressed: () {
                                    context
                                        .read<AuthenticationService>()
                                        .signIn(
                                          emailController.text.trim(),
                                          passwordController.text.trim(),
                                        );
                                  },
                                ),
                                width: 90,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Theme.of(context).accentColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
