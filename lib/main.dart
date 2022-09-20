import 'package:flutter/material.dart';
import 'components/articles.dart';
import 'components/top_button.dart';
import 'components/top_news.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final contents = [
    "Ini adalah isi berita 1 yang menceritakan tentang AAAAAAAAAAA",
    "Ini adalah isi berita 2 yang menceritakan tentang BBBBBBBBBBB",
    "Ini adalah isi berita 3 yang menceritakan tentang CCCCCCCCCCC",
    "Ini adalah isi berita 4 yang menceritakan tentang DDDDDDDDDDD",
  ];
  final images = [
    "berita1.jpg",
    "berita2.jpg",
    "berita3.jpg",
    "berita4.jpg",
  ];
  final dates = [
    "Jakarta, 13 September 2022",
    "Roma, 15 September 2022",
    "Madrid, 17 September 2022",
    "Paris, 19 September 2022",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soccer News',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MyApp'),
            bottom: TabBar(
              tabs: [
                Text("BERITA TERBARU"),
                Text("PERANDINGAN HARI INI"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
                  TopNews(),
                  Expanded(
                    child: ListView.builder(
                      itemCount: contents.length,
                      itemBuilder: (context, index) {
                        return News(index);
                      },
                    ),
                  ),
                ],
              ),
              Center(
                child: Text("Halaman pertandingan"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container News(int index) {
    return Container(
      width: 50,
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(1),
      color: Colors.green,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/images/' + images[index].toString(),
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
                  child: Text(contents[index]),
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(14),
            width: double.infinity,
            color: Colors.white,
            child: Text(
              dates[index],
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

