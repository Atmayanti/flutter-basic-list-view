import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  const TopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
