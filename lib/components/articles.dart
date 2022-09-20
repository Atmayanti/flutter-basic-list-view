import 'package:flutter/material.dart';

class Articles extends StatelessWidget {
  const Articles({ Key? key }) : super(key: key);

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