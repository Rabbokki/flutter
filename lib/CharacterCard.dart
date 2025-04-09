import 'package:flutter/material.dart';
import 'package:flutter_study/layout/myAppBar.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
          foregroundColor: Colors.white,
          centerTitle: true,
          title: Text('Character Card',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 100
          ),),
      ),
      body:
        Padding(
             padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //이미지 넣기 ㅇㅋ?
                  Center(
                    child: Image.asset(
                        'image/character_card/ch1.png',
                      width: 220,
                      height: 150,
                    ),
                  ),
                  Divider(
                    height: 60,
                    color: Colors.grey[850],
                    thickness: 0.5,
                    endIndent: 30,
                  ),
                  Text('Name',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 50
                  ),
                  ),
                  SizedBox(height: 10),
                  Text('Metal',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 30,
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Power Level',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 30,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('14',
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 30,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline),
                      SizedBox(width: 10,),
                      Text('모두가 날 알아보도록',
                      style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 30
                      ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline),
                      SizedBox(width: 10,),
                      Text('날 알아 듣도록',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 30
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_circle_outline),
                      SizedBox(width: 10,),
                      Text('크레센도 오우오우오우오',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: 30
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('image/character_card/ch2.png'),
                      radius: 40,
                      backgroundColor: Colors.white,
                    ),
                  )
                ],
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
