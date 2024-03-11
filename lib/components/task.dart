import 'package:flutter/material.dart';
import 'difficulty.dart';
import 'level.dart';

class Task extends StatefulWidget {
  final String name;
  final String pic;
  final int difficulty;

  const Task(this.name, this.pic, this.difficulty, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.teal[800]),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.asset(widget.pic))),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Text(
                            widget.name,
                            style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                overflow: TextOverflow.ellipsis),
                          ),
                        ),
                        Difficulty(widget.difficulty)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal[500],
                          foregroundColor: Colors.white,
                          fixedSize: const Size(70, 60),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            level++;
                          });
                        },
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Icon(Icons.arrow_drop_up), Text("Up")],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Nivel(level, widget.difficulty)
            ],
          )
        ],
      ),
    );
  }
}