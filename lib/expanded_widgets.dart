import 'package:flutter/material.dart';

class ExpandedWidgets extends StatelessWidget {
  final String text;
  final String dimension;

  ExpandedWidgets(this.text, this.dimension);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 42,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
                fontSize: 23,
                color: Colors.white,
                fontWeight: FontWeight.w600),
          ),
          Text(
            dimension,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
