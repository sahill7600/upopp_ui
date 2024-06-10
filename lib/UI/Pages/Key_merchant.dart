import 'package:demo_upopp/Constants/AppColors.dart';
import 'package:demo_upopp/UI/Styling/AppTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'Deals_Barcode.dart';

class Key_Merchant extends StatefulWidget {
  const Key_Merchant({super.key});

  @override
  State<Key_Merchant> createState() => _Key_MerchantState();
}

class _Key_MerchantState extends State<Key_Merchant> {
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SafeArea(
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20,top: 70),
                  child: Container(width: 350,height: 628,
                    child: Card(
                        child:Column(
                          children: [
                            Container(alignment: Alignment.topCenter,width: 350,
                                child: Image(image: AssetImage('assets/assetsimages/Maskgroup.png',),fit: BoxFit.cover,height:168 ,width: 350,)),
                            Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Image(image: AssetImage('assets/assetsimages/Insert.png',),fit: BoxFit.cover,),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0,right: 50,bottom: 20),
                              child: Image(image: AssetImage('assets/assetsimages/Frame 14219.png',),fit: BoxFit.cover,),
                            ),
                            Dash(
                                direction: Axis.horizontal,
                                length: 270,
                                dashLength: 8,
                                dashColor: Colors.grey),
                            Container(alignment:Alignment.center,margin: EdgeInsets.only(left: 20,top: 20),
                                child: Text("Key in Merchant Code",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)),
                            Container(alignment:Alignment.center,margin: EdgeInsets.only(left: 15,top: 10,right: 10),
                                child: Text("To redeem, kindly ask the cashier for merchant’s code.",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400),)),
            
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0,right: 10,top: 20,bottom: 20),
                              child: PinCodeTextField(
                                //   controller: model.pincodeOTPController,
                                textStyle:  AppTextStyles.textStylepurpel(),
                                // TextStyle(color: AppColors.purpelLinearColor ),
                                appContext: context,
                                pastedTextStyle: const TextStyle(
                                  // color: AppColors.purpelLinearColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                length: 6,
                                // obscureText: true,
                                // obscuringCharacter: '*',
                                //  obscuringWidget: const FlutterLogo(
                                //    size: 24,
                                //  ),
                                //  blinkWhenObscuring: true,
                                animationType: AnimationType.fade,
                                // validator: (v) {
                                //   if (v!.length < 3) {
                                //     return "I'm from validator";
                                //   } else {
                                //     return null;
                                //   }
                                // },
            
                                pinTheme: PinTheme(
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(5),
                                //  activeColor: AppColors.purpelLinearColor2,
                                  activeColor: AppColors.purpelLinearColor2,
                                  //AppColors.transparent,
                                  inactiveColor: AppColors.purpelLinearColor2,
                                  //AppColors.transparent,
            
                                  fieldHeight: 66,
                                  fieldWidth: 45,
                                  //activeFillColor: Colors.white,
                                ),
                                keyboardType: TextInputType.number,
                                boxShadows:  [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    color: AppColors.purpelLinearColor2,
                                    //blurRadius: 10,
                                  )
                                ],
                                //  onCompleted: (v) {debugPrint("Completed");},
                                // onTap: () {
                                //   print("Pressed");
                                // },
                                onChanged: (value) {
                                  debugPrint(value);
                                  setState(() {
                                    currentText = value;
                                  });
                                },
                                beforeTextPaste: (text) {debugPrint("Allowing to paste $text");
                                return true;
                                },
                              ),
                            ),
            
                            Container(width: 200,
                              child: ElevatedButton(
                                child: Text('Redeem',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Deals_Barcode(),),
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
                  left: MediaQuery.of(context).size.width / 2 - 9,
                  child: Container(
                    child: Text("DEALS",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w500),),
                  ),
                )
              ],
            ),
          ),
        )
      //   Stack(
      //     children: [
      //   CustomScrollView(
      //   slivers: [
      //   SliverAppBar(
      //   expandedHeight: 300,
      //     collapsedHeight: 60,
      //     floating: true,
      //     pinned: true,
      //     snap: true,
      //     backgroundColor: Colors.white,
      //     flexibleSpace: FlexibleSpaceBar(
      //       collapseMode: CollapseMode.pin,
      //       // title: Text('Title',
      //       //     style: TextStyle(fontSize: 28, color: Colors.black)),
      //       background: Stack(
      //         children: [
      //           Align(
      //             alignment: Alignment.topCenter,
      //             child: Container(
      //               height: 500 - 60 - 80,
      //               decoration: const BoxDecoration(
      //                 image: DecorationImage(
      //                   colorFilter:
      //                   ColorFilter.mode(Colors.black54, BlendMode.darken),
      //                 //  image: NetworkImage('https://picsum.photos/1024'),
      //                   image: AssetImage('assets/assetsimages/Maskgroup.png',),
      //                   fit: BoxFit.cover,
      //                 ),
      //               ),
      //             ),
      //           ),
      //           // Positioned(
      //           //   bottom: -10 + 0,
      //           //   left: MediaQuery.of(context).size.width / 2 - 50,
      //           //   child: Container(
      //           //     padding: EdgeInsets.all(5),
      //           //     decoration: ShapeDecoration(
      //           //       color: Colors.white,
      //           //       shape: CircleBorder(),
      //           //     ),
      //           //     child: CircleAvatar(
      //           //       backgroundImage:
      //           //       NetworkImage('https://picsum.photos/256'),
      //           //       radius: 45,
      //           //     ),
      //           //   ),
      //           // ),
      //         ],
      //       ),
      //     ),
      //   ),
      //     for (int i = 0; i < 10; i++)
      // SliverToBoxAdapter(
      //   child: Container(
      //     height: 200,
      //     color: i % 2 == 0 ? Colors.grey : Colors.grey.shade300,
      //   ),
      // )
      // ],
      // )
      //     ],
      //   ),
    );
  }
}
