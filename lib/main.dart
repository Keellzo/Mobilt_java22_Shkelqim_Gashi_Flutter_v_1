import 'package:flutter/material.dart';
import 'second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => const MyHomePage(title: 'Top G Page'),
        '/second': (context) => const SecondPage(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Image.network('https://cdn.pixabay.com/photo/2015/03/10/17/23/youtube-667451_1280.png'),
          ],
        ),
      ),
    );
  }
}
