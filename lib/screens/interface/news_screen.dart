import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:malibu/models/newpost_model.dart';
import 'package:malibu/models/posts_model.dart';
import 'package:provider/provider.dart';
import 'package:malibu/store/user.store.dart';

class NewsScreen extends StatefulWidget {
  NewsScreen({Key key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    final UserMob _userMob = Provider.of<UserMob>(context);
    var userEmail = _userMob.user.email;

    Widget _checkImage(String image) {
      if (!image.isEmpty && image != null) {
        return Container(
          width: 350,
          height: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(image),
          ),
        );
      }

      return Container();
    }

    // Widget imageProfile(String image) {}

    // Widget bottomSheet() {
    //   return Container(
    //     height: 100.0,
    //     width: 500.0,
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.only(top: 10.0),
    //           child: Text(
    //             "Escolha uma foto de Perfil",
    //             style: TextStyle(
    //                 fontSize: 17.0, fontFamily: 'Ubuntu', color: Colors.white),
    //           ),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.center,
    //           children: [
    //             FlatButton.icon(
    //               onPressed: () {
    //                 takePhoto(ImageSource.camera);
    //               },
    //               icon: Icon(
    //                 Icons.camera,
    //                 color: Colors.white,
    //               ),
    //               label: Text(
    //                 'Câmara',
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                 ),
    //               ),
    //             ),
    //             FlatButton.icon(
    //               onPressed: () {
    //                 takePhoto(ImageSource.gallery);
    //               },
    //               icon: Icon(
    //                 Icons.image,
    //                 color: Colors.white,
    //               ),
    //               label: Text(
    //                 'Galeria',
    //                 style: TextStyle(color: Colors.white),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ],
    //     ),
    //     decoration: BoxDecoration(
    //       boxShadow: [
    //         BoxShadow(
    //           offset: const Offset(0.0, 0.0),
    //           blurRadius: 1.0,
    //           spreadRadius: 1.0,
    //           color: Theme.of(context).primaryColor,
    //         ),
    //       ],
    //     ),
    //   );
    // }

    // void takePhoto(ImageSource source) async {
    //   final pickedFile = await _picker.getImage(
    //     source: source,
    //   );
    //   setState(() {
    //     _imageFile = pickedFile;
    //   });
    // }

    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('Posts').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          print(
            snapshot.data.docs.first.get('description'),
          );

          if (!snapshot.hasData) return CircularProgressIndicator();

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
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 0, right: 20),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          border: Border.all(
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.create_rounded,
                            color: Colors.white,
                          ),
                          alignment: Alignment.center,
                          iconSize: 20,
                          onPressed: () =>
                              Navigator.pushNamed(context, 'postcreator'),
                        ),
                      ),
                    ),
                  ),
                  // Row(
                  //   children: [
                  //     Container(
                  //       margin: EdgeInsets.only(top: 20, left: 25),
                  //       width: 350,
                  //       height: 250,
                  //       decoration: BoxDecoration(
                  //         border:
                  //             Border.all(color: Theme.of(context).primaryColor),
                  //         borderRadius: BorderRadius.circular(10.0),
                  //       ),
                  //       child: Stack(
                  //         clipBehavior: Clip.antiAliasWithSaveLayer,
                  //         overflow: Overflow.visible,
                  //         children: [
                  //           ClipRRect(
                  //             borderRadius: BorderRadius.circular(10.0),
                  //             child: Image.asset('assets/pipe.png'),
                  //           ),
                  //           Container(
                  //             width: 60,
                  //             height: 20,
                  //             decoration: BoxDecoration(
                  //               border: Border.all(
                  //                   color: Theme.of(context).primaryColor),
                  //               borderRadius: BorderRadius.circular(10.0),
                  //               color: Theme.of(context).primaryColor,
                  //             ),
                  //             alignment: Alignment.center,
                  //             child: Text(
                  //               'Username',
                  //               style: TextStyle(
                  //                   fontFamily: 'Ubuntu',
                  //                   fontSize: 10,
                  //                   color: Colors.white),
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ),
                  //           Align(
                  //             alignment: Alignment.bottomCenter,
                  //             child: Container(
                  //               width: 350,
                  //               height: 90,
                  //               decoration: BoxDecoration(
                  //                 border: Border.all(
                  //                     color: Theme.of(context).primaryColor),
                  //                 borderRadius: BorderRadius.circular(10.0),
                  //                 color: Theme.of(context).primaryColor,
                  //               ),
                  //               child: Column(
                  //                 children: [
                  //                   Row(
                  //                     children: [
                  //                       Padding(
                  //                         padding: EdgeInsets.only(
                  //                             top: 15, left: 20),
                  //                         child: Text(
                  //                           'Wow',
                  //                           style: TextStyle(
                  //                               fontFamily: 'Ubuntu',
                  //                               fontSize: 15,
                  //                               color: Colors.white),
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                   Padding(
                  //                     padding:
                  //                         EdgeInsets.only(left: 10.0, top: 8.0),
                  //                     child: Row(
                  //                       children: [
                  //                         Post(),
                  //                         IconButton(
                  //                           icon: Icon(
                  //                             Icons.comment_outlined,
                  //                             color: Colors.white,
                  //                           ),
                  //                           iconSize: 20,
                  //                           padding: EdgeInsets.only(
                  //                               left: 10, bottom: 12),
                  //                           alignment: Alignment.bottomLeft,
                  //                           onPressed: () =>
                  //                               Navigator.pushNamed(
                  //                                   context, 'postcomment'),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  for (var post in snapshot.data.docs) ...[
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 25, left: 25),
                          child: Stack(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            overflow: Overflow.visible,
                            children: [
                              _checkImage(
                                post.get('image'),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 350,
                                  height: 95,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Theme.of(context).primaryColor),
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 25, left: 20),
                                            child: Text(
                                              post.get('description'),
                                              style: TextStyle(
                                                  fontFamily: 'Ubuntu',
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.0, top: 3.0),
                                        child: Row(
                                          children: [
                                            Post(),
                                            IconButton(
                                              icon: Icon(
                                                Icons.comment_outlined,
                                                color: Colors.white,
                                              ),
                                              iconSize: 20,
                                              padding: EdgeInsets.only(
                                                  left: 10, bottom: 12),
                                              alignment: Alignment.bottomLeft,
                                              onPressed: () =>
                                                  Navigator.pushNamed(
                                                      context, 'postcomment'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Theme.of(context).primaryColor),
                                alignment: Alignment.center,
                                child: FittedBox(
                                  child: Text(
                                    "${_userMob.user.email}",
                                    style: TextStyle(
                                        fontFamily: 'Ubuntu',
                                        fontSize: 10,
                                        color: Colors.white),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class Post extends StatefulWidget {
  @override
  PostState createState() => new PostState();
}

class PostState extends State<Post> {
  bool liked = false;

  _pressed() {
    setState(
      () {
        liked = !liked;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        liked ? Icons.favorite : Icons.favorite_border,
        color: liked ? Theme.of(context).accentColor : Colors.white,
      ),
      onPressed: () => _pressed(),
    );
  }
}
