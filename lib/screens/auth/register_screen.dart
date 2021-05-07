import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class User {
  final String uid;

  User({this.uid});
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String email = '';
  String password = '';
  String passwordagain = '';
  String error = '';

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }

  Future registerEmailAndPassword(
      String email, String password, String passwordagain) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password, passwordagain: passwordagain);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

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
                    "Olá,",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Ubuntu'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 37, top: 10, right: 35),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Introduza os dados nos campos abaixo ou entre com uma conta social",
                    style: TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                  ),
                ),
              ),
              Form(
                key: _formkey,
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
                            validator: (val) =>
                                val.isEmpty ? 'Introduza um Email' : null,
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (val) {
                              setState(() => email = val);
                            },
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
                            validator: (val) => val.length < 6
                                ? 'Introduza uma Password com mais de 6 carateres'
                                : null,
                            decoration: InputDecoration(
                              labelText: 'Palavra-passe',
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                            onChanged: (val) {
                              setState(() => password = val);
                            },
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
                            decoration: InputDecoration(
                              labelText: 'Palavra-passe Novamente',
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                            onChanged: (val) {
                              setState(() => passwordagain = val);
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 132,
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
                                onPressed: () async {
                                  if (_formkey.currentState.validate()) {
                                    dynamic result =
                                        await _auth.registerEmailAndPassword(
                                            email, password);
                                    if (result == null) {
                                      setState(() =>
                                          error = 'Insira um Email Válido!');
                                    }
                                  }
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
    );
  }
}
