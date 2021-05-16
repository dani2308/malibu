import 'package:flutter/material.dart';
import 'package:malibu/screens/auth/authentication.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                            onChanged: (val) {},
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
                            onChanged: (val) {},
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
                            onChanged: (val) {},
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
                                onPressed: (){
                                  context.read<AuthenticationService>().signIn(
                                    email: emailController.text.trim(),
                                    password: passwordController.text.trim(),
                                  ),
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
