import 'package:flutter/material.dart';

class AnimalSounds extends StatelessWidget {
  const AnimalSounds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text('Animal Sounds',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
          letterSpacing: 50
        ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'image/animal/bear.png',
              width: 220,
              height: 150,
            ),
          ),
          Text('Bear',
          style: TextStyle(
            color: Colors.black,
            letterSpacing: 30,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          ),
          Divider(
            height: 60,
            color: Colors.grey[850],
            thickness: 1,
            endIndent: 30,
          )
        ],
      ),
    );
  }
}
