import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Viewer'),
        ),
        body: ImageListView(), // Use a custom widget for displaying images
      ),
    );
  }
}

class ImageListView extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/cat.jpg', // Replace with your image paths
    'assets/cat7.jpg',
    'assets/funnycat.jpeg',
    // Add more image paths as needed
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical, // Scroll horizontally
      itemCount: imagePaths.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0), // Add spacing between images
          child: Image.asset(imagePaths[index]),
        );
      },
    );
  }
}
