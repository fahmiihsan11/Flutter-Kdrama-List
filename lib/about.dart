import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:kdrama_db/main.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutPage extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
          title: const Text('About'),
          automaticallyImplyLeading: false,
          leading: IconButton (
                        icon: Icon(Icons.arrow_back), 
                        onPressed: () {Navigator.pop(context);
                        },
                    ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 150),
                child: Image.asset('images/avatar.jpg'),
                width: 120,
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              // child: Linkify(
              //   onOpen: _onOpen,
              //   text:"https://github.com/fahmiihsan11")
              child: Text('@fahmiihsan11'),
            ),
          
            Container(
              margin: const EdgeInsets.only(top: 18),
              child: Text('This App is made using Flutter', style: TextStyle(fontSize: 24),),),
          ],
        )
          // 
      ),
  );
  }
}
