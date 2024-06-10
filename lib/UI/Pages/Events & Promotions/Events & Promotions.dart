import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

import 'EventsPromotions_Details.dart';

class EventsPromotions extends StatefulWidget {
  const EventsPromotions({super.key});

  @override
  State<EventsPromotions> createState() => _EventsPromotionsState();
}

class _EventsPromotionsState extends State<EventsPromotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Events & Promotions"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 10),
            child: Column(
              children: [
                Container( height: 336,width: 350,
                  child: Card(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/assetsimages/Frame 14319.png',), fit: BoxFit.contain,
                        ),
                        SizedBox(height: 5,),
                        Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 5),
                          child: ElevatedButton(
                            child: Text('Book Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EventsPromotions_Details(),),
                              );
                            },
                            style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                              backgroundColor: Color( 0xFF65CAE4),
                              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Container( height: 336,width: 350,
                  child: Card(
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/assetsimages/Frame 14320.png',), fit: BoxFit.contain,
                        ),
                        SizedBox(height: 5,),
                        Container(alignment: Alignment.topLeft,margin: EdgeInsets.only(left: 5),
                          child: ElevatedButton(
                            child: Text('Learn More',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                              backgroundColor: Color( 0xFF65CAE4),
                              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
