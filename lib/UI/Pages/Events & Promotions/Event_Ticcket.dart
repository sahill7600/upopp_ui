import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class Event_Ticcket extends StatefulWidget {
  const Event_Ticcket({super.key});

  @override
  State<Event_Ticcket> createState() => _Event_TiccketState();
}

class _Event_TiccketState extends State<Event_Ticcket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(margin: EdgeInsets.only(right: 15),
            child: InkWell(child: Icon(Icons.clear),
              onTap: (){
                Navigator.pop(context);
              },),
          )
        ],
      ),
      body: Column(
        children: [
          //image (35)
          Image(image: AssetImage('assets/assetsimages/image (35).png',), fit: BoxFit.contain,),
          SizedBox(height: 80,),
          Container(height: 54,width: 350,margin: EdgeInsets.only(left: 20,right: 20,top: 80),
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
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => Key_Voucher(),));
                                      // );
                                    } ,
                                  ),
                                  InkWell(
                                    child: Image(image: AssetImage('assets/assetsimages/Frame 140501.png',),fit: BoxFit.contain,height: 90,width: 110,),
                                    onTap:(){
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //     builder: (context) => QRScannerScreen(),),
                                      // );
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
      ),
    );
  }
}
