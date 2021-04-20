import 'package:flutter/material.dart';


class CardWidget extends StatelessWidget {
 final String day;
  final String fahrenheit;

  CardWidget({this.day, this.fahrenheit});


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white38,
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      child: Container(
        width: 210,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 15,
            ),
            Text(
              day,
              style: TextStyle(
                  fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  fahrenheit + " \u2109",
                  style: TextStyle(
                      fontSize: 40, color: Colors.white),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.wb_sunny_rounded,
                  color: Colors.white,
                  size: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
