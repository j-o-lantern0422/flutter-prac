import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = "偶数";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: const [
            Icon(Icons.create),
            Text("初めてのタイトル"),
          ],
        ),
      ),
      body: Column(children: [
        const Text("HelloWorld!"),
        const Text("ハローワールド"),
        TextButton(
          onPressed: () => {print("ボタンが押されたよ")},
          child: const Text("テキストボタン"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24.0,
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 30,
            ),
            Icon(
              Icons.beach_access,
              color: Colors.blue,
              size: 36.0,
            ),
         ]),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
        if(_counter % 2 == 0)
          const Text('偶数です', style: TextStyle(fontSize: 20, color: Colors.red)),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add)
      ),
      drawer: const Drawer(child: Center(child: Text("Drawer"))),
      endDrawer: const Drawer(child: Center(child: Text("EndDrawer"))),
    );
  }
}
