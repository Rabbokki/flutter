import 'package:flutter/material.dart';
import 'package:flutter_study/layout/myAppBar.dart';

class ButtonTest extends StatelessWidget {
  const ButtonTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(pageTitle: '메탈슬러그 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                print('눌림');
              },
              child: Text('eleveatged button'),
            ),
            SizedBox(height: 10),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                print('눌림');
              },
              child: Text('filled button'),
            ),
            SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.deepOrange,
                backgroundColor: Color.fromARGB(255, 241, 203, 244),
              ),
              onPressed: () => {},
              child: Text('Text Button'),
            ),
            SizedBox(height: 10),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.home_rounded, size: 40, color: Colors.cyan),
            ),
          ],
        ),
      ),
      // floatingAciontButton은 항상 scafford 맨 마지막
      floatingActionButton:
      Column(
      mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            backgroundColor: Colors.pink,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50)
              )
            ),
            onPressed: () {},
            child: Icon(Icons.add, color: Colors.green, size: 20),
          ),
          SizedBox(height: 10,),
          FloatingActionButton.extended(
            heroTag: 'btn2',
            label: Text('Return',
              style: TextStyle(color: Colors.yellow),
            ),
            backgroundColor: Colors.cyanAccent,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(30)
                )
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
                Icons.arrow_back,
                color: Colors.green,
                size: 20
            ),
          ),
        ],
      ),
    );
  }
}
