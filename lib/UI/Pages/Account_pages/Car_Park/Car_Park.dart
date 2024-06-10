import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

import 'Car_Rebates.dart';

class Car_Park extends StatefulWidget {
  const Car_Park({super.key});

  @override
  State<Car_Park> createState() => _Car_ParkState();
}

class _Car_ParkState extends State<Car_Park> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Car Park Rebates"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10),
          child: Column(
            children: [
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14328.png', // Replace with your wheel image
                  // width: 167,
                  // height: 98,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => POPPoints(),),
                  // );
                },
              ),
              SizedBox(height: 20,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Frame 14261 (1).png', // Replace with your wheel image
                  // width: 167,
                  // height: 98,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => POPPoints(),),
                  // );
                },
              ),
              SizedBox(height: 40,),
              Padding(
                padding: EdgeInsets.only(left: 10.0,right: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Manage IU",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,)),
                    InkWell(
                      child: Image.asset(
                        'assets/assetsimages/secondary.png',
                        width: 85,
                        height: 30,
                      ),
                      onTap: () =>    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child:
                                AlertDialog(backgroundColor: Colors.white,
                              title: Center(child: Text('Please select one:',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),)),
                              content:  TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Enter IU no.',
                                  hintText: 'Enter IU no.',
                                ),
                              ),
                              actions: [
                                //   Frame 140491.png
                                Column(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(width: 200,
                                      child: ElevatedButton(
                                        child: Text('Add',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Car_Rebates(),),
                                          );
                                        },
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Color( 0xFF65CAE4),
                                            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                            textStyle: TextStyle(
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                       SizedBox(height: 10,),
                                    InkWell(
                                      child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
                                      onTap: (){
                                        Navigator.of(context).pop(false);
                                      },
                                    ),
                                  ],
                                ),


                              ],
                            ),
                               // (){

                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => POPPoints(),),
                             // );
                        //    },
                          );
                        },
                      )
                      //     AlertDialog(backgroundColor: Colors.white,
                      //   title: Center(child: Text('Please select one:',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),)),
                      //   content:  TextField(
                      //     obscureText: true,
                      //     decoration: InputDecoration(
                      //       border: OutlineInputBorder(),
                      //       labelText: 'Enter IU no.',
                      //       hintText: 'Enter IU no.',
                      //     ),
                      //   ),
                      //   actions: [
                      //     //   Frame 140491.png
                      //     Column(
                      //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //       children: [
                      //         Container(width: 200,
                      //           child: ElevatedButton(
                      //             child: Text('Add',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                      //             onPressed: () {
                      //               // Navigator.push(
                      //               //   context,
                      //               //   MaterialPageRoute(
                      //               //     builder: (context) => RewardSuccess(),),
                      //               // );
                      //             },
                      //             style: ElevatedButton.styleFrom(
                      //                 backgroundColor: Color( 0xFF65CAE4),
                      //                 padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      //                 textStyle: TextStyle(
                      //                     fontSize: 30,
                      //                     fontWeight: FontWeight.bold)),
                      //           ),
                      //         ),
                      //         //   SizedBox(height: 10,),
                      //         InkWell(
                      //           child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
                      //           onTap: (){
                      //             Navigator.of(context).pop(false);
                      //           },
                      //         ),
                      //       ],
                      //     ),
                      //
                      //
                      //   ],
                      // ),
                      //     (){
                      //
                      //   // Navigator.push(
                      //   //   context,
                      //   //   MaterialPageRoute(
                      //   //     builder: (context) => POPPoints(),),
                      //  // );
                      // },
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Component 3.png', // Replace with your wheel image
                  // width: 167,
                  // height: 98,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => POPPoints(),),
                  // );
                },
              ),
              SizedBox(height: 10,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Component 4.png', // Replace with your wheel image
                  // width: 167,
                  // height: 98,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => POPPoints(),),
                  // );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
