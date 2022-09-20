import 'package:flutter/material.dart';

class TopNews extends StatelessWidget {
  const TopNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ),
        ],
      ),
    );
  }
}
