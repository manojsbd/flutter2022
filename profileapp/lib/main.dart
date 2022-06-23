import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Profile App",
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile App'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Center(
              child: Image.network(
            "https://assets-global.website-files.com/5a690960b80baa0001e05b0f/5bb25c47222db17fe0c2d846_John-headshot.png",
            height: 250,
            width: 250,
          )),
          const SizedBox(height: 10),
          const Text(
            'Name : Magnus Junior',
            style: TextStyle(
                fontSize: 33, color: Colors.green, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          const Text(
            'Address: Kathmandu, Nepal',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 5),
          const Text(
            'Email: magnusjr@gmail.com',
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 70),
          const Text('Developed by : Manoj Subedi'),
        ],
      ),
    ),
  ));
}
