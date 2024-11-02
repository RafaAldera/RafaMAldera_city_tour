import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Tour'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      buildImage('https://picsum.photos/id/162/300/200'),
                      SizedBox(width: 8),
                      buildImage('https://picsum.photos/id/164/300/200'),
                      SizedBox(width: 8),
                      buildImage('https://picsum.photos/id/174/300/200'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                  'Explore, Enjoy, Experience.',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.left,
                ),
              SizedBox(height: 8),
              Text(
                'Explore the charm of our city\'s hidden gems and embark on a journey to discover the rich cultural heritage, breathtaking landscapes, and unique experiences that await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty of our city and create memories that will last a lifetime. Come and visit our city\'s treasures today.',
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Image.network(
                'https://picsum.photos/id/162/200/300',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 8),
              Text(
                'Blue body of water',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        url,
        width: 150,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}


