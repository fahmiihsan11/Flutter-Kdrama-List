import 'package:flutter/material.dart';

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
