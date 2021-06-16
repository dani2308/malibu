import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class BoardRentChooseScreen extends StatefulWidget {
  BoardRentChooseScreen({Key key}) : super(key: key);

  @override
  _BoardRentChooseScreenState createState() => _BoardRentChooseScreenState();
}

class _BoardRentChooseScreenState extends State<BoardRentChooseScreen> {
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
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.pushNamed(context, 'home'),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 300.0,
                //width: 300.0,
                child: Carousel(
                  images: [
                    Image.asset(
                      'assets/board.png',
                      height: 10,
                    ),
                    Image.asset(
                      'assets/board.png',
                      height: 10,
                    ),
                    Image.asset(
                      'assets/board.png',
                      height: 10,
                    ),
                    Image.asset(
                      'assets/board.png',
                      height: 10,
                    ),
                    Image.asset(
                      'assets/board.png',
                      height: 10,
                    ),
                  ],
                  dotSize: 10.0,
                  indicatorBgPadding: 8.0,
                  animationDuration: Duration(seconds: 2),
                  dotBgColor: Colors.transparent,
                  dotColor: Theme.of(context).accentColor,
                  dotIncreasedColor: Theme.of(context).accentColor,
                ),
              ),
              SizedBox(
                height: 52.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 30),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.55,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular((50)),
                    topRight: Radius.circular((50)),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "SoftBoard Ocean - 7'0'",
                            style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Post(),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.0,
                        right: 30.0,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CountQntd(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50.0,
                        left: 10.0,
                      ),
                      child: Text(
                        "Hello world, aqui está a minha descrição",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
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

class CountQntd extends StatefulWidget {
  CountQntd({Key key}) : super(key: key);

  @override
  _CountQntdState createState() => _CountQntdState();
}

class _CountQntdState extends State<CountQntd> {
  var total = 15.00;
  var valor = 15.00;
  int _itemcount = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 30,
          height: 30,
          child: FlatButton(
            onPressed: () => {
              if (_itemcount > 1)
                {
                  setState(() => _itemcount--),
                  valor -= total,
                },
            },
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.remove,
              color: Theme.of(context).primaryColor,
              size: 12.0,
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).accentColor,
            ),
          ),
          child: Center(
            child: Text(
              "$_itemcount",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Container(
          width: 30,
          height: 30,
          child: FlatButton(
            onPressed: () => {
              setState(
                () => _itemcount++,
              ),
              valor += total,
            },
            color: Theme.of(context).accentColor,
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.add,
              color: Theme.of(context).primaryColor,
              size: 12.0,
            ),
          ),
        ),
        SizedBox(
          width: 125,
        ),
        Text(
          "$valor €",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 23.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
