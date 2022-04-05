import 'package:flutter/material.dart';

class About extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AboutState();
  }
}

class AboutState extends State<About>{
   @override
  Widget build(BuildContext context) {
  return Scaffold(
     appBar: AppBar(
          title: const Text('About'),
          automaticallyImplyLeading: false,
          leading: IconButton (
                        icon: Icon(Icons.arrow_back), 
                        onPressed: () {Navigator.pop(context);
                              /** Do something */ 
                        },
                    ),
      ),
      body: Center(
          child: Text('This App is made using Flutter', style: TextStyle(fontSize: 24),),
      ),
  );
  }
}
