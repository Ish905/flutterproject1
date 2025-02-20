import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourist Visiting App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Tourist Visiting APP'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image of the tourist spot
            Image.asset('assets/PICTURE1.jpg', width: 1400, height: 400), // Make sure the path is correct
            const SizedBox(height: 16),

            // Star rating icon
            const Icon(Icons.star, color: Colors.yellow, size: 40),
            const Text('4.5/5', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),

            // Call, route, and share icon buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.phone, size: 40),
                  onPressed: () {
                    // Add functionality for calling
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.directions, size: 40),
                  onPressed: () {
                    // Add functionality for routing
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.share, size: 40),
                  onPressed: () {
                    // Add functionality for sharing
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Description of the tourist spot
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'This is a beautiful and popular tourist destination, known for its scenic views and historical significance. '
                    'Visitors can enjoy various activities like hiking, sightseeing, and local cuisine',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}