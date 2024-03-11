import 'package:flutter/material.dart';

class Nivel extends StatelessWidget {
  const Nivel(this.value, this.difficulty, {super.key});

  final int difficulty;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            alignment: Alignment.center,
            width: 300,
            child: LinearProgressIndicator(
              color: Colors.teal[300],
              value: (difficulty > 0)
                  ? (value / difficulty) / 10
                  : value / 10,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 12, top: 8, bottom: 8),
          child: Text(
            "Nível $value",
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      ],
    );
  }
}