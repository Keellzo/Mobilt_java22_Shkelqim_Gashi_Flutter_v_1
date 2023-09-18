import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go to Second Page'),
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Enter something'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Item 1'),
                Text('Item 2'),
              ],
            ),
            const Center(
              child: Text('Centered Text'),
            ),
            Image.network('https://example.com/image.jpg'),
          ],
        ),
      ),
    );
  }
}
