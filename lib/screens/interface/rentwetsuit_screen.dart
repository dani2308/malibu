import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:malibu/store/user.store.dart';

class RentWetsuitScreen extends StatefulWidget {
  RentWetsuitScreen({Key key}) : super(key: key);

  @override
  _RentWetsuitScreenState createState() => _RentWetsuitScreenState();
}

class _RentWetsuitScreenState extends State<RentWetsuitScreen> {
  @override
  Widget build(BuildContext context) {
    Widget _buildLoadingBar() {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    bool liked = false;

    final UserMob _userMob = Provider.of<UserMob>(context);
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection('Suits').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        print(
          snapshot.data.docs.first.get('name'),
        );

        if (!snapshot.hasData) return _buildLoadingBar();
        return SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 40,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: PopupMenu(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 100,
                        right: 0,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.search_rounded,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {
                          showSearch(
                            context: context,
                            delegate: DataSearch(),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 0,
                        right: 0,
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, 'favourites'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 0,
                        right: 30,
                      ),
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
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8.0,
                    top: 10.0,
                  ),
                  child: GridView.count(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    children: [
                      for (var suit in snapshot.data.docs) ...[
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
                                    padding:
                                        const EdgeInsets.only(left: 10, top: 5),
                                    child: Text(
                                      suit.get('name'),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Image.network(
                                      suit.get('image'),
                                      height: 120,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.add),
                                    color: Theme.of(context).primaryColor,
                                    onPressed: () async {
                                      var userEmail = _userMob.user.email;
                                      FirebaseFirestore.instance
                                          .collection('Cart')
                                          .add({
                                        'user_email': userEmail,
                                        'product': {
                                          'name': suit.get('name'),
                                          'description':
                                              suit.get('description'),
                                          'image': suit.get('image'),
                                          'id': suit.get('id'),
                                          'price': suit.get('price')
                                        }
                                      }).then((value) {});
                                    },
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        liked
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        color: liked
                                            ? Theme.of(context).accentColor
                                            : Theme.of(context).primaryColor,
                                      ),
                                      onPressed: () async {
                                        setState(() {
                                          liked = !liked;
                                        });
                                        var userEmail = _userMob.user.email;
                                        FirebaseFirestore.instance
                                            .collection('Favs')
                                            .add({
                                          'user_email': userEmail,
                                          'product': {
                                            'name': suit.get('name'),
                                            'description':
                                                suit.get('description'),
                                            'image': suit.get('image'),
                                            'id': suit.get('id'),
                                            'price': suit.get('price')
                                          }
                                        }).then((value) {});
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          onPressed: () =>
                              Navigator.pushNamed(context, 'boardrentchoose'),
                        ),
                      ]
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final suits = [
    "RipCurl - Women 5/3",
    "RipCurl - DawnPatrol 4/3",
    "RipCurl - E-Bomb 4/3",
    "QuickSilver - Kids 4/3",
    "Onda - ZFlex 5/3",
    "Billabong - Absolute 4/3"
  ];

  final recentSuits = [];

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions

    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    final suggestionList = query.isEmpty
        ? recentSuits
        : suits
            .where(
              (p) => p.startsWith(query),
            )
            .toList();

    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(
          Icons.surfing,
        ),
        title: Text(
          suggestionList[index],
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}

enum MenuOption { Nome, Preco, Relevancia }

class PopupMenu extends StatelessWidget {
  const PopupMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      child: Container(
        width: 88,
        height: 35,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 0, left: 30),
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border.all(
            color: Theme.of(context).primaryColor,
          ),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.0, 0.0),
              blurRadius: 1.0,
              spreadRadius: 1.0,
              color: Colors.grey,
            ),
          ],
        ),
        child: Text(
          'Filtros',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
            fontFamily: 'Ubuntu',
          ),
        ),
      ),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('Nome'),
            value: MenuOption.Nome,
          ),
          PopupMenuItem(
            child: Text('Preco'),
            value: MenuOption.Preco,
          ),
          PopupMenuItem(
            child: Text('Relevancia'),
            value: MenuOption.Relevancia,
          ),
        ];
      },
    );
  }
}
