import 'package:flutter/material.dart';
import 'package:flutter_study/buttonTest.dart';
import './layout/myAppBar.dart';
import 'AppBarMenu.dart';
import 'CharacterCard.dart';
import 'animalSound.dart';
import 'animalSounds.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.lightBlueAccent),
      title: 'Flutter Study',
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: MyAppBar(pageTitle: '메탈슬러그',),
      body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TextMenu(
                titleText: '1. Button Test Page',
                openWidget: ButtonTest(),
              ),
              _TextMenu(
                titleText: '2. Character Card Page',
                openWidget: CharacterCard(),
              ),
              _TextMenu(
                titleText: '3. Animal Sounds',
                openWidget: AnimalSound(),
              ),
              _TextMenu(
                titleText: '4. AppBar Menu Page',
                openWidget: AppBarMenu(),
              ),
            ],
          ),
        ),
    );
  }
}

class _TextMenu extends StatelessWidget {
  const _TextMenu({super.key, this.titleText, this.openWidget});
  final titleText;
  final openWidget;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          Navigator.push(context,
              MaterialPageRoute(
                  builder: (context)=> openWidget));
          print('버튼 눌림');
        },
        child: Text(titleText,
          style: TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20
          ),
        )
    );
  }
}


