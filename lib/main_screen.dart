import 'package:flutter/material.dart';
import 'package:kdrama_db/detail_screen.dart';
import 'package:kdrama_db/model/kdrama.dart';
 
class MainScreen extends StatelessWidget {

  late final ThemeData? darkTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  title: Text('Size: ${MediaQuery.of(context).size.width}'),
         title: const Text('KDrama DB'),
      ),
      body: LayoutBuilder(
      
         builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return TourismPlaceGrid(gridCount: 3);
          } else {
            return TourismPlaceGrid(gridCount: 4);
          }
        },
      
      ),
    );
  }
}
class TourismPlaceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return ListView.builder(
        itemBuilder: (context, index) {
          final DramaItem place = dramaList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                         const  SizedBox(
                            height: 10,
                          ),
                          Text(place.year),
                          Icon(Icons.star),
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

class TourismPlaceGrid extends StatelessWidget {
  final int gridCount;

  TourismPlaceGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
            crossAxisCount: gridCount,
           crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            children: dramaList.map((place) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailScreen(place: place);
                  }));
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(
                          place.imageAsset,
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
                                    place.name,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                              ],
                            ),
                            Text(' '),
                            Column(
                              children: [
                                 Text(
                                  place.year,
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
                              children: [
                                Icon(Icons.star, color: Color.fromARGB(255, 209, 190, 19),)
                              ],
                            ),
                            Text(' '),
                            Column(
                              children: [
                               Text(
                                place.rate,
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
