import 'package:demo_upopp/UI/Pages/Account_pages/E_Voucher/E_Voucher.dart';
import 'package:flutter/material.dart';

class Card_ReceivedScreen extends StatefulWidget {
  const Card_ReceivedScreen({super.key});

  @override
  State<Card_ReceivedScreen> createState() => _Card_ReceivedScreenState();
}

class _Card_ReceivedScreenState extends State<Card_ReceivedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Accept Gift")),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container (height: 258,width: 301,alignment: Alignment.center,margin: EdgeInsets.only(top: 30),
                  child: Image(image: AssetImage('assets/assetsimages/image 80.png',))),
              SizedBox(height: 20,),
              Text("Received a gift?",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
              SizedBox(height: 10,),
              Text("Accept it by entering your\nPromo Code below.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Enter Promo Code here',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                  textInputAction: TextInputAction.next,
                  onEditingComplete: () => FocusScope.of(context).nextFocus(),
                  // validator: (value) {
                  //   if (value!.isEmpty) {
                  //     return 'Type email address here';
                  //   }
                  //   return null;
                  // },
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                child: Text('Accept Gift',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed: (){
                  showDialog(
                    context: context,barrierColor: Colors.black.withOpacity(0.85),
                    builder: (BuildContext context) {
                      return Expanded(
                        child: AlertDialog(backgroundColor: Colors.transparent,
                          title:  Stack(
                            children: [
                              Column(
                                children: [
                                  Text("Nikki has sent you \nUOL E-Vouchers!",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.white),),
                                  Image(image: AssetImage('assets/assetsimages/envelope.png',),),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("2x  \$10 UOL E-Voucher",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                                        Text("\$20",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("2x  \$50 UOL E-Voucher",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.white),),
                                        Text("\$100",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Colors.white)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  ElevatedButton(
                                    child: Text('Go to My E-Vouchers',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => E_Voucher(),),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                                      backgroundColor: Color( 0xFF65CAE4),
                                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                    ),
                                  ),

                                ],
                              ),

                            ],
                          ),

                        ),
                      );
                    },
                  );
                  return null;
                },
                style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                  backgroundColor: Color( 0xFF65CAE4),
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
