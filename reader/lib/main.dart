import 'package:flutter/material.dart';
import 'package:reader/ReaderScreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chapter Reader App",
      home: HomePage(),
    ));

var chapterLists = [
  'Chapter 1',
  'Chapter 2',
  'Chapter 3',
  'Chapter 4',
  'Chapter 5',
  'Chapter 6',
  'Chapter 7',
  'Chapter 8',
  'Chapter 9',
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reader"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: chapterLists.length,
            // ignore: prefer_const_constructors
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (chapterLists[index] == "Chapter 1") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(1)),
                    );
                  } else if (chapterLists[index] == "Chapter 2") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReaderScreen(2)),
                    );
                  }
                },
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Icon(Icons.book, size: 40),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        chapterLists[index],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
