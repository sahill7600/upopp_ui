import 'package:flutter/material.dart';

import 'Payment_Gift.dart';

class ConfirmationScreen extends StatefulWidget {
  const ConfirmationScreen({super.key});

  @override
  State<ConfirmationScreen> createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Confirmation"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage('assets/assetsimages/image (55).png',)),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Container(alignment: Alignment.topLeft,
                    child: Text("Enter recipient's mobile number",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),)),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: TextField (
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      labelText: 'Friend’s Name',
                      hintText: 'Friend’s Name'
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text('Next',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed:
                    () {
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
                                      labelText: 'Mobile Number',
                                      hintText: 'Type Mobile Number here',
                                    ),
                                  ),
                                ),
                                Container(alignment: Alignment.center,
                                  child: ElevatedButton(
                                    child: Text('Proceed to Payment',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                    onPressed: () {
          
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Payment_Gift(),),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                                      backgroundColor: Color( 0xFF65CAE4),
                                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,),
                                Center(
                                  child: InkWell(child: Text("Edit Mobile Number",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w600),),
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
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(200, 42)
                  // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
