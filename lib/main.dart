import 'package:flutter/material.dart';

void main() {
  runApp(const AppHome());
}

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: studyTracker(),
    );
  }
}

class studyTracker extends StatefulWidget {
  const studyTracker({super.key});

  @override
  State<studyTracker> createState() => _studyTrackerState();
}

class _studyTrackerState extends State<studyTracker> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to your Study Tracker",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 77, 201, 210),
        centerTitle: true,
      ),

      body: Padding(padding: EdgeInsets.all(25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            color: Colors.cyanAccent,
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text("To Do List",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}


