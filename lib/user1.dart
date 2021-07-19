import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'user1.dart';
import 'user2.dart';
import 'user3.dart';
import 'user4.dart';
import 'user5.dart';
import 'secondScreen.dart';
class User1 extends StatefulWidget {
  const User1({Key? key}) : super(key: key);

  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<User1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get In Contact',
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/1.jfif'),
              radius: 25.0,
            ),
          ),
        ],
      ),drawer: Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('admin'),
            accountEmail: Text('admin@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/admin.jfif'),
            ),
          ),
          ListTile(
            title: Text('user 1'),
            onTap: () {
              Navigator.of(context).pop;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => User1()));
            },
          ),
          Divider(
            color: Colors.black12,
            height: 10.0,
          ),
          ListTile(
            title: Text('user 2'),
            onTap: () {
              Navigator.of(context).pop;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => User2()));
            },
          ),
          Divider(
            color: Colors.black12,
            height: 10.0,
          ),
          ListTile(
            title: Text('user 3'),
            onTap: () {
              Navigator.of(context).pop;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => User3()));
            },
          ),
          Divider(
            color: Colors.black12,
            height: 10.0,
          ),
          ListTile(
            title: Text('user 4'),
            onTap: () {
              Navigator.of(context).pop;
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => User4()));
            },
          ),
          Divider(
            color: Colors.black12,
            height: 10.0,
          ),
          ListTile(
            title: Text('user 5'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => User5()));
            },
          ),
        ],
      ),
    ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(0.0),
              color: Colors.blueAccent,
              child: Image(
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1542831371-29b0f74f9713?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZ3JhbW1pbmd8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50.0),
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        Icons.email,
                        size: 50.0,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {launch('https://mail.google.com/mail/u/0/#inbox');},
                      child: Text('Follow Me On Facebook'),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50.0),
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        size: 50.0,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {launch('https://www.facebook.com/friends');},
                      child: Text('Follow Me On Facebook'),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50.0),
                color: Colors.blueAccent,
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Icon(
                        FontAwesomeIcons.linkedin,
                        size: 50.0,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {launch('https://www.linkedin.com/feed/');},
                      child: Text('follow me on linkedin'),
                    ),
                  ],
                )),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(50.0),
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    Container(
                      child: Icon(
                        FontAwesomeIcons.github,
                        size: 50.0,
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {launch('https://github.com/');},
                      child: Text('follow me on github'),
                    ),
                  ],
                )),
          ),
          Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.blueAccent,
                      child: TextField(
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(width: 10),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                          hintText: 'add comments',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      //padding: EdgeInsets.all(10.0),
                      color: Colors.blueAccent,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SecondScreen(),
                            ),
                          );
                        },
                        //padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                        color: Colors.red,
                        textColor: Colors.white,
                        child: Text(
                          'Submit',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
/*https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTypPOBvg1zB4NhqjVgVwnWzE2RxZ0xy81sJA&usqp=CAU*/