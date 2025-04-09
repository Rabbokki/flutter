import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppBarMenu extends StatelessWidget {
  const AppBarMenu({super.key});

  void toastMessage(){
    Fluttertoast.showToast(
        msg: '플러터 토스트 메시지',
        gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
      fontSize: 20,
      webPosition: "center",
      toastLength: Toast.LENGTH_SHORT
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('image/listview/profile.JPG'),
                backgroundColor: Colors.white,
              ),
                accountName: Text('JJJ'),
                accountEmail: Text('jjj@gsadg.com'),
              onDetailsPressed: (){
                print('화살표 누름.');
              },
            ),
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850]
              ),
              title: Text('Home'),
              onTap: (){
                print('홈버튼 눌림');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                  color: Colors.grey[850]
              ),
              title: Text('Settings'),
              onTap: (){
                print('세팅 버튼 눌림');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer,
                  color: Colors.grey[850]
              ),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A버튼 눌림');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.arrow_back,
                  color: Colors.grey[850]
              ),
              title: Text('Back'),
              onTap: (){
                Navigator.pop(context);
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        // leading: IconButton(
        //     onPressed: (){
        //   print('메뉴 버튼 눌림');
        // },
        //     icon: Icon(Icons.menu)
        // ),
        title: Text('AppBar Icon menu',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: (){
                print('쇼핑카트 버튼 눌림');
              },
              icon: Icon(Icons.shopping_cart),
          ),
          IconButton(
            onPressed: (){
              print('찾기 버튼 눌림');
            },
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Center(
        child:
        Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed:(){
                  ScaffoldMessenger.of(context)
                  .showSnackBar(
                    SnackBar(content: Text('스낵바 입니다.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                    ),
                      backgroundColor: Colors.teal,
                      duration: Duration(milliseconds: 2000),
                    )
                  );
            },
                child: Text('스낵바')
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                toastMessage();
              },
              child: Text('Toast Message'),
            ),
          ],
        ),
      ),
      floatingActionButton:
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
    );
  }
}
