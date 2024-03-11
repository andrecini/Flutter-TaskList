import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.deepPurple, width: 50, height: 50),
              Container(color: Colors.purple, width: 50, height: 50),
              Container(color: Colors.purpleAccent, width: 50, height: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.pink[900], width: 50, height: 50),
              Container(color: Colors.pink[600], width: 50, height: 50),
              Container(color: Colors.pink[400], width: 50, height: 50),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(color: Colors.blue[900], width: 50, height: 50),
              Container(color: Colors.blue[600], width: 50, height: 50),
              Container(color: Colors.blue[400], width: 50, height: 50),
            ],
          ),
          Stack(
            children: [
              ElevatedButton(
                onPressed: () => print("Button was clicked"),
                child: Text("Click!"),
              )
            ],
          )
        ],
      ),
    );
  }
}