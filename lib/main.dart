import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soccer News',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text("BERITA TERBARU"),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      primary: Colors.black,
                    ),
                    onPressed: () {},
                    child: Text("PERTANDINGAN HARI INI"),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 12,
            ),
            color: Colors.purpleAccent,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/soccer1.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.all(12),
                  width: double.infinity,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Costa Mendekat Ke Palmeiras',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  width: double.infinity,
                  child: Text('Transfer'),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SubBerita(),
                  SubBerita(),
                  SubBerita(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SubBerita extends StatelessWidget {
  const SubBerita({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(1),
      color: Colors.green,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/soccer2.png',
                fit: BoxFit.contain,
                height: 110,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  margin: EdgeInsets.all(1),
                  color: Colors.white,
                  height: 110,
                  width: 210,
                  alignment: Alignment.centerLeft,
                  child: Text(
                      'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat'),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(14),
            width: double.infinity,
            color: Colors.white,
            child: Text(
              'Barcelona Feb 13, 2022',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
