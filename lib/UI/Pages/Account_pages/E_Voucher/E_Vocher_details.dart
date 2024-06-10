import 'package:demo_upopp/UI/Pages/scanner_qr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'Key_Vocher.dart';

class E_Voucher_Details extends StatefulWidget {
  const E_Voucher_Details({super.key});

  @override
  State<E_Voucher_Details> createState() => _E_Voucher_DetailsState();
}

class _E_Voucher_DetailsState extends State<E_Voucher_Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 70),
                  child: Container(width: 350,height: 628,
                    child: Card(
                        child:Column(
                          children: [
                            Container(alignment: Alignment.topCenter,width: 350,
                                child: Image(image: AssetImage('assets/assetsimages/Rectangle 530 (2).png',),fit: BoxFit.cover,height:168 ,width: 350,)),
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Image(image: AssetImage('assets/assetsimages/UOL E-Voucher.png',),fit: BoxFit.fill,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0,right: 50,bottom: 20),
                              child: Image(image: AssetImage('assets/assetsimages/Frame 14218 (2).png',),fit: BoxFit.cover,),
                            ),
                            Dash(
                                direction: Axis.horizontal,
                                length: 270,
                                dashLength: 8,
                                dashColor: Colors.grey),
                            Container(alignment:Alignment.topLeft,margin: EdgeInsets.only(left: 20,top: 10),
                                child: Text("Available for use at: ",style: TextStyle(fontSize: 11),)),
                            Container(height: 60,width: 315,
                              child: Card(
                                child: Container(alignment: Alignment.bottomCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Image(image: AssetImage('assets/assetsimages/Group 140642.png',),fit: BoxFit.cover,),
                                    )),
                              ),
                            ),
                            // curabitur.png
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image(image: AssetImage('assets/assetsimages/curabitur.png',),fit: BoxFit.cover,),
                            ),
                            Container(alignment:Alignment.topLeft,margin: EdgeInsets.only(left: 20,),
                                child: Text("Terms & Conditions: ",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),)),
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0,right: 15,top: 10,bottom: 15),
                              child: Image(image: AssetImage('assets/assetsimages/cur.png',),fit: BoxFit.cover,),
                            ),
                          ],
                        )
                    ),
                  ),
                ),
                Positioned(
                  top: 46 + 0,
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
                  top: 75 + 0,
                  left: MediaQuery.of(context).size.width / 2 - 30,
                  child: Container(
                    child: Text("My E-Vouchers",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),),
                  ),
                )
              ],
            ),
            Container(height: 54,width: 350,margin: EdgeInsets.only(left: 20,right: 20,top: 5),
              child: Builder(
                builder: (context) {
                  return SlideAction(
                    innerColor: Colors.white,
                    outerColor: Colors.transparent,
                    onSubmit: (){
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(backgroundColor: Colors.white,
                              title: Center(child: Text('Please select one:',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),)),
                              actions: [
                                //   Frame 140491.png
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      child: Image(image: AssetImage('assets/assetsimages/Frame 140491.png',),fit: BoxFit.contain,height: 90,width: 110,),
                                      onTap:(){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Key_Voucher(),));
                                        // );
                                      } ,
                                    ),
                                    InkWell(
                                      child: Image(image: AssetImage('assets/assetsimages/Frame 140501.png',),fit: BoxFit.contain,height: 90,width: 110,),
                                      onTap:(){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => QRScannerScreen(),),
                                        );
                                      } ,
                                    ),
                                  ],
                                ),


                              ],
                            ),
                          );
                        },
                      );
                      return null;
                    },
                  );
                },
              ),
            ),
          ],
        )

    );
  }
}
