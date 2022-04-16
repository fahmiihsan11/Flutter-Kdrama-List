import 'package:flutter/material.dart';
import 'package:kdrama_db/about.dart';
import 'package:kdrama_db/detail_screen.dart';
import 'package:kdrama_db/model/kdrama.dart';
import 'package:kdrama_db/coming_soon.dart';
import 'package:kdrama_db/my-list.dart';
 
class MainScreen extends StatelessWidget {
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.white,
      minimumSize: Size(88, 44),
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),

    );

  late final ThemeData? darkTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Color.fromARGB(255, 209, 190, 19),
        child: Icon(Icons.domain_verification),
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) {return MyListPage();}))
      ),
      appBar: AppBar(
          title: const Text('KDrama DB'),
          actions: <Widget>[
              
                TextButton(
                  style: flatButtonStyle,
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) {return CarouselWithIndicatorDemo();}));
                    }, 
                  child: const Text('Coming Soon'),                
                ),
          ],
          
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              width: double.infinity,
              height: 60,
              color: Color.fromARGB(255, 177, 177, 175),
              child: const Text('Menu',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 42, 42, 42)
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
              },
              leading: const Icon(
                Icons.home,
                size: 20
              ),
              title: const Text('Home',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
             ListTile(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return CarouselWithIndicatorDemo();}));
               },
              leading: const Icon(
                Icons.watch_later_outlined,
                size: 20
              ),
              title: const Text('Coming Soon',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
             ListTile(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return MyListPage();}));
               },
              leading: const Icon(
                Icons.done,
                size: 20
              ),
              title: const Text('My List',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {return AboutPage();}));
              },
              leading: const Icon(
                Icons.info,
                size: 20
              ),
              title: const Text('About',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
           
          ],
        ),
       ),
      body: 
            LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 790) {
                return (
                    KdramaList());      
              } else if (constraints.maxWidth <= 1200) {
                return (
                    KdramaGrid(gridCount: 3));
              } else {
                return (
                   KdramaGrid(gridCount: 4));   
              }
            },
          ), 
    );
  }
}

class KdramaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
        itemBuilder: (context, index) {
          final DramaItem item = dramaList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: item);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(item.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                           Text(
                              item.name,
                              style: const TextStyle(fontSize: 16.0),
                           ),
                          Row(
                            children: [
                              Column(
                                children: const [
                                   Icon(Icons.star, color: Color.fromARGB(255, 209, 190, 19)),
                                ],
                              ),
                              const Text('  '),
                              Column(
                                  children: [
                                    Text(item.rate),
                                  ],
                              )
                            ],
                          ),
                         const  SizedBox(
                            height: 8,
                          ),             
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
        itemCount: dramaList.length,
      );
  }
}

class KdramaGrid extends StatelessWidget {
  final int gridCount;
  KdramaGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
            crossAxisCount: gridCount,
           crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: dramaList.map((item) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place: item);
                  }));
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          item.imageAsset,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        child: Row(
                          children: [
                            Column(
                              children: [
                                 Text(
                                    item.name,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                              ],
                            ),
                            const Text(' '),
                            Column(
                              children: [
                                 Text(
                                  item.year,
                                ),
                              ],
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(left: 8.0),     
                      ),
                      Padding(
                        child: Row(
                          children: [
                            Column(
                              children: const [
                                Icon(Icons.star, color: Color.fromARGB(255, 209, 190, 19),)
                              ],
                            ),
                            const Text(' '),
                            Column(
                              children: [
                               Text(
                                item.rate,
                                 style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                               )
                              ],
                            )
                          ],
                        ),
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),  
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}



