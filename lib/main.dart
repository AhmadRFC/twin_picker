import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          title: const Text('pictures matching'),
          backgroundColor: Colors.white70,
        ),
        body: const ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftNum = 1;
  int rightNum = 2;

  void randomNumGenerator() {
    leftNum = Random().nextInt(9) + 1;
    rightNum = Random().nextInt(9) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftNum == rightNum ? 'You Won!' : 'Try Again...',
          style: const TextStyle(
            fontSize: 42,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        randomNumGenerator();
                      },
                    );
                  },
                  child: Image.asset('images/image-$leftNum.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        randomNumGenerator();
                      },
                    );
                  },
                  child: Image.asset('images/image-$rightNum.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
