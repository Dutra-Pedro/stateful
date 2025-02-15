import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double tamanho = 300;
  double valorRed = 0, valorGreen = 0, valorBlue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter State'),
        actions: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              setState(() {
                if (tamanho > 50) tamanho -= 50;
              });
            },
          ),
          IconButton(
            icon: const Text('S'),
            onPressed: () {
              setState(() {
                tamanho = 50;
              });
            },
          ),
          IconButton(
            icon: const Text('M'),
            onPressed: () {
              setState(() {
                tamanho = 300;
              });
            },
          ),
          IconButton(
            icon: const Text('L'),
            onPressed: () {
              setState(() {
                tamanho = 500;
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                if (tamanho < 500) tamanho += 50;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Icon(
                Icons.airplanemode_active,
                size: tamanho,
                color: Color.fromARGB(255, valorRed.toInt(), valorGreen.toInt(),
                    valorBlue.toInt()),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Slider(
                    activeColor: Colors.red,
                    value: valorRed,
                    min: 0,
                    max: 255,
                    onChanged: (value) {
                      setState(() {
                        valorRed = value++;
                      });
                    },
                  ),
                ),
                Text(
                  valorRed.round().toString(),
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Slider(
                    activeColor: Colors.green,
                    value: valorGreen,
                    min: 0,
                    max: 255,
                    onChanged: (value) {
                      setState(() {
                        valorGreen = value++;
                      });
                    },
                  ),
                ),
                Text(
                  valorGreen.round().toString(),
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Expanded(
                  child: Slider(
                    activeColor: Colors.blue,
                    value: valorBlue,
                    min: 0,
                    max: 255,
                    onChanged: (value) {
                      setState(() {
                        valorBlue = value++;
                      });
                    },
                  ),
                ),
                Text(
                  valorBlue.round().toString(),
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
