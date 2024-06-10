import 'package:flutter/material.dart';

import 'Events_Success.dart';

class Event_popPoints extends StatefulWidget {
  const Event_popPoints({super.key});

  @override
  State<Event_popPoints> createState() => _Event_popPointsState();
}

class _Event_popPointsState extends State<Event_popPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [],),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140.0,left: 20,right: 20),
            child: Container(width: 355,height: 360,
              child: Card(
                child:  Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image(image: AssetImage( 'assets/assetsimages/image (33).png'),),
                    ),
                    SizedBox(height: 20,),
                    ElevatedButton(
                      child: Text('Book Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => RewadsRedem(),),
                        // );

                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Expanded(
                              child: AlertDialog(backgroundColor: Colors.white,
                                title: Center(child: Text('Confirm Booking?',
                                  style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22,wordSpacing: BorderSide.strokeAlignCenter),)),
                                //   content: const Text("is disabled on this device. Please enable it and try again."),
                                actions: [
                                  Image(image: AssetImage('assets/assetsimages/image (34).png',), fit: BoxFit.contain,),
                                  SizedBox(height: 5,),
                                  Container(alignment: Alignment.center,
                                    child: ElevatedButton(
                                      child: Text('Next',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                      onPressed: () {
                                        //Frame 1423333
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => EventsSuccess(),),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                                        backgroundColor: Color( 0xFF65CAE4),
                                        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Container(alignment: Alignment.center,
                                    child: ElevatedButton(
                                      child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color( 0xFF65CAE4)),),
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                                        backgroundColor: Colors.white,side: BorderSide(color: Color( 0xFF65CAE4))
                                        // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 5,)
                                ],
                              ),
                            );
                          },
                        );

                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color( 0xFF65CAE4),
                          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),

                    // Group 14150
                  ],
                ),
                // Ginger
              ),
            ),

          ),
          Positioned(
            top: 116 + 0,
            left: MediaQuery.of(context).size.width / 2 - 50,
            child: Container(
              // padding: EdgeInsets.all(5),
              // decoration: ShapeDecoration(
              //   color: Colors.white,
              //   shape: CircleBorder(),
              // ),
              child: Image(image: AssetImage('assets/assetsimages/Group.png',),fit: BoxFit.contain,width: 120,height: 70,
                //AssetImage('assets/assetsimages/Group.png',),
                // radius: 45,
              ),
            ),
          ),
          Positioned(
            top: 143 + 0,
            left: MediaQuery.of(context).size.width / 2 - 15,
            child: Container(
              child: Text("EVENTS",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
