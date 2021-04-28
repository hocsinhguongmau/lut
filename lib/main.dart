import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// const primaryColor = Colors.blue;
Color primaryColor = Colors.purple;
Color secondaryColor = Colors.black87;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home page',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Union negotiation',
          style: TextStyle(color: Colors.black87, fontSize: 24, height: 2),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Color(0xffffffff),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _listItem(),
            _listItem(),
            _listItem(),
            _listItem()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
            label: 'New topic',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
          ),
        ],
      ),
    );
  }
}

Widget _listItem() {
  return Padding(
      padding: EdgeInsets.only(top: 20.0, left: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.circular(5.0)),
                  child: Image.network(
                      'https://chinapost-track.com/cdn/images/carriers/icons/0025-posti-finland-post.png',
                      width: 65,
                      height: 65),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                            padding: EdgeInsets.only(
                                top: 3.0, bottom: 3.0, left: 8.0, right: 8.0),
                            child: Text(
                              'On-going',
                              style: TextStyle(
                                  backgroundColor: Colors.blue,
                                  color: Colors.white,
                                  fontSize: 12),
                            ))))
              ]),
          Container(
              width: 298,
              child: Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Extra works on buying season",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        Text(
                          "The upcoming buying season is close by, we want to prepare for it buy increase...",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 16, height: 1.3),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 10.0),
                            child: Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "MORE",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: primaryColor,
                                  ),
                                )))
                      ])))
        ],
      ));
}
