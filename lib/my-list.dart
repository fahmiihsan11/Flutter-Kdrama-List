import 'package:flutter/material.dart';
import 'package:kdrama_db/about.dart';
import 'package:kdrama_db/detail_screen.dart';
import 'package:kdrama_db/model/kdrama.dart';
import 'package:kdrama_db/coming_soon.dart';

var total = 0;
bool _isPressed = false;

class MyList extends StatefulWidget {
  final int totalList;
  

  const MyList({required this.totalList});

  @override
  _ListState createState() => _ListState();
  
}

class _ListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
  
  void _myCallback() {
    setState(() {
      _isPressed = true;
      total = total + 1;
    });
  }

   return Container(
     child: Column(
       children: [
          ElevatedButton(
            onPressed: _myCallback,
            // _isPressed == false ? _myCallback : null,
            child: Text('+ Add to My List'), 
          ),
          Card(
            child: Text('My List : $total'),
          )
          
       ],
     )
     
     );
  }

}
class MyListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text('My List'),
        leading: IconButton (
                        icon: Icon(Icons.arrow_back), 
                        onPressed: () {Navigator.pop(context);
                              /** Do something */ 
                        },
                    ),
      ),
      body: Center(
          child: Text('My List: $total', style: TextStyle(fontSize: 30),),
      ),
    );
  }
  
}












