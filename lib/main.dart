import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home page',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Union negotiation',
          style: TextStyle(color: Color(0xffffffff)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Color(0xffffffff),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[_listItem(), _listItem()],
        ),
      ),
    );
  }
}

Widget _listItem() {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
          padding: EdgeInsets.all(12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5.0),
            child: Image.network(
                'https://chinapost-track.com/cdn/images/carriers/icons/0025-posti-finland-post.png',
                width: 65,
                height: 65),
          )),
      Container(
          width: 272,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      "Extra works on buying season",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )),
                Text(
                  "The upcoming buying season is close by, we want to prepare for it buy increase...",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16, height: 1.3),
                )
              ]))
    ],
  );
}
