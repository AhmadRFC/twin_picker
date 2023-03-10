import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white54,
        appBar: AppBar(
          title: Text('pictures matching'),
          backgroundColor: Colors.white70,
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Try Again...',
          style: TextStyle(
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
                    print('left button been pressed');
                  },
                  child: Image.asset('images/image-1.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    print('Right button been pressed');
                  },
                  child: Image.asset('images/image-1.png'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
