import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimalSound extends StatelessWidget {
  const AnimalSound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: SizedBox(
          height: 50,
          width: 105,
          child: Lottie.asset('lottie/cat.json'),
        ),
        title: Text('Animal Sound'),
        centerTitle: true,
      ),
      body:
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('image/animal/bear.png',height: 100,),
                        Padding(
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Bear', style: TextStyle(fontSize: 20),)
                      ],
                    ),

                    Column(
                      children: [
                        Image.asset('image/animal/camel.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('Camel', style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('image/animal/fox.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('fox', style: TextStyle(fontSize: 20),)
                      ],
                    ),

                    Column(
                      children: [
                        Image.asset('image/animal/koala.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('koala', style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset('image/animal/lion.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('lion', style: TextStyle(fontSize: 20),)
                      ],
                    ),

                    Column(
                      children: [
                        Image.asset('image/animal/tiger.png',height: 100,),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: Container(
                            width: 115,
                            height: 2,
                            color: Colors.green,
                          ),
                        ),
                        Text('tiger', style: TextStyle(fontSize: 20),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(50)
            )
        ),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
