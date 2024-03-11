import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  const Difficulty(
      this.value, {
        super.key,
      });

  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 14,
          color: (value >= 1) ? Colors.yellow[800] : Colors.grey[400],
        ),
        Icon(
          Icons.star,
          size: 14,
          color: (value >= 2) ? Colors.yellow[800] : Colors.grey[400],
        ),
        Icon(
          Icons.star,
          size: 14,
          color: (value >= 3) ? Colors.yellow[800] : Colors.grey[400],
        ),
        Icon(
          Icons.star,
          size: 14,
          color: (value >= 4) ? Colors.yellow[800] : Colors.grey[400],
        ),
        Icon(
          Icons.star,
          size: 14,
          color: (value >= 5) ? Colors.yellow[800] : Colors.grey[400],
        )
      ],
    );
  }
}
