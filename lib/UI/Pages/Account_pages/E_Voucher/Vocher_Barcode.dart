import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Voucher_Barcode extends StatefulWidget {
  const Voucher_Barcode({super.key});

  @override
  State<Voucher_Barcode> createState() => _Voucher_BarcodeState();
}

class _Voucher_BarcodeState extends State<Voucher_Barcode> {
  String currentText = "";
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

                            Padding(
                              padding: const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                              child: Image(image: AssetImage('assets/assetsimages/plz.png',),fit: BoxFit.cover,),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 30.0,right: 30,top: 20),
                              child: Image(image: AssetImage('assets/assetsimages/Group 14175.png',),fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,right: 10,top: 15),
                              child: Image(image: AssetImage('assets/assetsimages/Frame 14225.png',),fit: BoxFit.cover,),
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
                  );
                },
              ),
            ),
          ],
        )

    );
  }
}
