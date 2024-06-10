import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'Gift_Voucher_success.dart';

class Gift_E_Voucher extends StatefulWidget {
  const Gift_E_Voucher({super.key});

  @override
  State<Gift_E_Voucher> createState() => _Gift_E_VoucherState();
}

class _Gift_E_VoucherState extends State<Gift_E_Voucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:  SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 20,top: 70),
                      child: Container(width: 350,height: 600,
                        child: Card(
                            child:Column(
                              children: [
                                Container(alignment: Alignment.topCenter,width: 350,
                                    child: Image(image: AssetImage('assets/assetsimages/Rectangle 530 (2).png',),fit: BoxFit.cover,height:168 ,width: 350,)),
                                Padding(
                                  padding: const EdgeInsets.only(left: 25.0,right: 25,top: 10,bottom: 10),
                                  child: Text("\$20 UOL E-Voucher",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),)
                                  //Image(image: AssetImage('assets/assetsimages/Insert.png',),fit: BoxFit.cover,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50.0,right: 50,bottom: 20),
                                  child: Image(image: AssetImage('assets/assetsimages/Frame 142188.png',),fit: BoxFit.cover,),
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
                      left: MediaQuery.of(context).size.width / 2 - 20,
                      child: Container(
                        child: Text("E-Vouchers",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),),
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
                                  title:
                                  Image(image: AssetImage('assets/assetsimages/image (45).png',)),
                                  actions: [
                                    //   Frame 140491.png image (46)
                                    Padding(
                                      padding: EdgeInsets.all(15),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Email address',
                                          hintText: 'Type email address here',
                                        ),
                                      ),
                                    ),
                                    Container(alignment: Alignment.center,
                                      child: ElevatedButton(
                                        child: Text('Next',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                        onPressed: () {
            
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Expanded(
                                                child: AlertDialog(backgroundColor: Colors.white,
                                                  title:
                                                  Image(image: AssetImage('assets/assetsimages/image (46).png',)),
                                                  actions: [
                                                    //   Frame 140491.png image (46)
                                                    Padding(
                                                      padding: EdgeInsets.all(15),
                                                      child: TextField(
                                                        decoration: InputDecoration(
                                                          border: OutlineInputBorder(),
                                                          labelText: 'Email address',
                                                          hintText: 'Type email address here',
                                                        ),
                                                      ),
                                                    ),
                                                    Container(alignment: Alignment.center,
                                                      child: ElevatedButton(
                                                        child: Text('Proceed',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                                        onPressed: () {
                                                          //Frame 1423333
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) => Gift_Voucher_success(),),
                                                          );
                                                        },
                                                        style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                                                          backgroundColor: Color( 0xFF65CAE4),
                                                          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(height: 10,),
                                                    Center(
                                                      child: InkWell(child: Text("Edit Email",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                                        onTap:(){
                                                          Navigator.of(context).pop(false);
                                                        } ,),
                                                    )
            
            
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                          return null;
            
            
                                        },
                                        style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                                          backgroundColor: Color( 0xFF65CAE4),
                                          // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Center(
                                      child: InkWell(child: Text("Cancel",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
                                        onTap:(){
                                          Navigator.of(context).pop(false);
                                        } ,),
                                    )
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
                SizedBox(height: 8,),
                Container(
                  child: ElevatedButton(
                    child: Text('Gift this UOL E-Voucher',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color( 0xFF65CAE4)),),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(fixedSize: Size(310, 54),
                        backgroundColor: Colors.white,side: BorderSide(color: Color( 0xFF65CAE4))
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    ),
                  ),
                ),
                SizedBox(height: 8,),
              ],
            ),
          ),
        )

    );
  }
}
