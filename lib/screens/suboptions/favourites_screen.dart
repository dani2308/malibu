import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:malibu/models/product_model.dart';
import 'package:malibu/store/user.store.dart';
import 'package:provider/provider.dart';

class FavouritesScreen extends StatefulWidget {
  FavouritesScreen({Key key}) : super(key: key);

  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  @override
  Widget build(BuildContext context) {
    final UserMob _userMob = Provider.of<UserMob>(context);
    var userEmail = _userMob.user.email;
    bool liked = false;

    Widget _buildLoadingBar() {
      return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    FlatButton(
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () => Navigator.pushNamed(context, 'home'),
                    ),
                    Text(
                      'Favoritos',
                      style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 270,
                ),
                Text(
                  'Não existem dados nos favoritos!',
                  style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Icon(
                  Icons.search_off,
                  size: 50,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('Favs')
          .where('user_email', isEqualTo: userEmail)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData || snapshot.data.docs.isEmpty)
          return _buildLoadingBar();
        else {
          //int total = 0;
          List<Product> products = List<Product>();

          print(snapshot.data.docs.first.get('product'));

          for (var item in snapshot.data.docs) {
            products.add(Product.fromJson(item.get('product')));
          }

          return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton(
                          child: Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Theme.of(context).accentColor,
                          ),
                          onPressed: () => Navigator.pushNamed(context, 'home'),
                        ),
                        Text(
                          'Favoritos',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 160),
                          child: IconButton(
                            icon: Icon(
                              Icons.shopping_bag_outlined,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () =>
                                Navigator.pushNamed(context, 'shopbag'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8.0,
                        top: 40.0,
                      ),
                      child: GridView.count(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        children: [
                          for (Product product in products) ...[
                            FlatButton(
                              child: Container(
                                margin: EdgeInsets.only(left: 0, bottom: 10),
                                width: 160,
                                height: 230,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  overflow: Overflow.visible,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      heightFactor: 13.5,
                                      widthFactor: 1.1,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, top: 5, right: 10),
                                        child: Text(product.name),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Image.network(
                                          product.image,
                                          height: 130,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            liked
                                                ? Icons.favorite_border
                                                : Icons.favorite,
                                            color: liked
                                                ? Theme.of(context).primaryColor
                                                : Theme.of(context).accentColor,
                                          ),
                                          onPressed: () async {
                                            setState(() {
                                              liked = !liked;
                                            });

                                            FirebaseFirestore.instance
                                                .collection('Favs')
                                                .get()
                                                .then(
                                                  (snapshot) => {
                                                    for (DocumentSnapshot ds
                                                        in snapshot.docs)
                                                      {
                                                        print(ds),
                                                        ds.reference.delete()
                                                      }
                                                  },
                                                );
                                            Navigator.pushNamed(
                                                context, 'home');
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              onPressed: () => Navigator.pushNamed(
                                  context, 'boardrentchoose'),
                            ),
                          ],
                          SizedBox(
                            height: 20,
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
      },
    );
  }
}
