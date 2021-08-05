import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'secondScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String email = '';
  String _launchUrl = 'https://chat.whatsapp.com/ES9xu2avcYT9RH4yLLN4Eu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Get In Contact for private group',
        ),
      ),
      body: Column(
        children: <Widget>[
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
                      onPressed: () {
                        launch(
                            'https://chat.whatsapp.com/ES9xu2avcYT9RH4yLLN4Eu');
                      },
                      child: Text('Follow Me On gmail'),
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
                      onPressed: () {
                        launch(
                            'https://chat.whatsapp.com/ES9xu2avcYT9RH4yLLN4Eu');
                      },
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
                      onPressed: () {
                        launch(
                            'https://chat.whatsapp.com/ES9xu2avcYT9RH4yLLN4Eu');
                      },
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
                    onPressed: () {
                      launch(
                          'https://chat.whatsapp.com/ES9xu2avcYT9RH4yLLN4Eu');
                    },
                    child: Text('follow me on github'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    //start here
  }
}
