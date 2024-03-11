import 'package:flutter/material.dart';
import 'package:tasklist/components/task.dart';

class InitialPage extends StatefulWidget {
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  bool visible = true;
  Icon visibleIcon = Icon(Icons.visibility, color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
          title: const Text("TaskList",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.teal[600]),
      body: AnimatedOpacity(
          opacity: visible ? 1 : 0,
          duration: const Duration(milliseconds: 300),
          child: ListView(children: const [
            Task("Aprender Dart", "assets/dart.jpg", 2),
            Task("Aprender Flutter", "assets/flutter.jpg", 4),
            Task("Estudar UI/UX", "assets/ux.jpg", 3),
            Task("Estudar Machine Learning", "assets/machine-learning.jpg", 5),
          ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            visible = !visible;

            if (visible)
              visibleIcon = Icon(Icons.visibility, color: Colors.white);
            else
              visibleIcon = Icon(Icons.visibility_off, color: Colors.white);
          });
          print(visible);
        },
        backgroundColor: Colors.teal[600],
        child: visibleIcon,
      ),
    );
  }
}
