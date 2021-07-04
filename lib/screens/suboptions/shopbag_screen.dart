import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:malibu/models/cart_model.dart';
import 'package:malibu/models/product_model.dart';
import 'package:malibu/store/user.store.dart';
import 'package:provider/provider.dart';
import 'package:malibu/widgets/shopbag_item.dart';

class ShopBagScreen extends StatefulWidget {
  ShopBagScreen({Key key}) : super(key: key);

  @override
  _ShopBagScreenState createState() => _ShopBagScreenState();
}

class _ShopBagScreenState extends State<ShopBagScreen> {
  @override
  Widget build(BuildContext context) {
    final UserMob _userMob = Provider.of<UserMob>(context);
    var userEmail = _userMob.user.email;

    Widget _buildLoadingBar() {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('Cart')
          .where('user_email', isEqualTo: userEmail)
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData || snapshot.data.docs.isEmpty)
          return _buildLoadingBar();
        else {
          int total = 0;
          List<Product> products = List<Product>();

          print(
            snapshot.data.docs.first.get('product'),
          );

          for (var item in snapshot.data.docs) {
            products.add(
              Product.fromJson(
                item.get('product'),
              ),
            );
          }

          for (Product product in products) {
            total += product.price;
          }

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
                          'Saco de Compras',
                          style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20.0,
                          ),
                          for (Product product in products) ...[
                            Padding(
                              padding: const EdgeInsets.only(left: 45),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Image.network(
                                      product.image,
                                      height: 130,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 20.0,
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          product.name,
                                          style: TextStyle(fontSize: 15),
                                        ),
                                        Text(
                                          'Preço: ${product.price}€',
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 35),
                                    child: IconButton(
                                      icon: Icon(Icons.close_rounded),
                                      color: Theme.of(context).accentColor,
                                      onPressed: () {
                                        FirebaseFirestore.instance
                                            .collection("Cart")
                                            .doc(product.id)
                                            .delete()
                                            .then(
                                          (_) {
                                            print('sucesso!');
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment(2, 0.0),
                              child: Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Container(
                                    height: 1.0,
                                    width: 355.0,
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            ),
                          ],
                          SizedBox(
                            height: 50.0,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              "Total: ${total}",
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Ubuntu',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30.0,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 120,
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
                                  'Confirmar',
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.white,
                                    fontFamily: 'Ubuntu',
                                  ),
                                ),
                                onPressed: () async {},
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
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

  createShowDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Confirmado',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          content: Text(
            'O seu pedido foi confirmado com Sucesso!',
            style: TextStyle(
              fontFamily: 'Ubuntu',
            ),
          ),
          actions: [
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pop('Confirmado');
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
                  color: Theme.of(context).accentColor,
                ),
                child: Text(
                  'Ok',
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
}
