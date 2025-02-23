import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 5, 73, 129),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/komputer.jpeg"),
          ),
          SizedBox(height: 10),
          Text(
            "Muhammad Naufal Fauzi Ali",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("123220207"),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Tombol 1")),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {}, child: Text("Tombol 2")),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {}, child: Text("Tombol 3")),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(4, (index) {
                  return Card(
                    color: [const Color.fromARGB(255, 45, 206, 255), const Color.fromARGB(255, 45, 206, 255), const Color.fromARGB(255, 45, 206, 255), const Color.fromARGB(255, 45, 206, 255)][index],
                    child: Center(
                      child: Icon(
                        Icons.computer,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
