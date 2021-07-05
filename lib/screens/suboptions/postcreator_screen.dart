import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:malibu/models/post_model.dart';
import 'package:provider/provider.dart';
import 'package:malibu/store/user.store.dart';

class PostCreatorScreen extends StatefulWidget {
  PostCreatorScreen({Key key}) : super(key: key);

  @override
  _PostCreatorState createState() => _PostCreatorState();
}

class _PostCreatorState extends State<PostCreatorScreen> {
  final TextEditingController descriptionController = TextEditingController();
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  final _formKey = GlobalKey<FormState>();

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    final UserMob _userMob = Provider.of<UserMob>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: TextButton(
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'home'),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40, top: 40),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).primaryColor,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: CircleAvatar(
                            backgroundImage: AssetImage("assets/mii.png"),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(right: 50, left: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Escreve um Post',
                                border: InputBorder.none,
                              ),
                              controller: descriptionController,
                              keyboardType: TextInputType.text,
                              style:
                                  TextStyle(fontSize: 15, fontFamily: 'Ubuntu'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60, top: 40),
                    child: Row(
                      children: [
                        TextButton(
                          child: Text(
                            '+   Adicionar Foto',
                            style: TextStyle(
                              fontSize: 17,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          onPressed: () {
                            takePhoto(ImageSource.gallery);
                          },
                        ),
                      ],
                    ),
                  ),
                  FlatButton(
                    child: Container(
                      width: 70,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        ),
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
                      alignment: Alignment.center,
                      child: Text(
                        'Postar',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onPressed: () async {
                      await PostFormService().sumbitForm(
                          descriptionController.text, File(_imageFile.path));
                      Navigator.pushNamed(context, 'home');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
