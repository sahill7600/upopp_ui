import 'package:flutter/material.dart';

import 'Reward_Success_Code.dart';

class RewardSuccess extends StatefulWidget {
  const RewardSuccess({super.key});

  @override
  State<RewardSuccess> createState() => _RewardSuccessState();
}

class _RewardSuccessState extends State<RewardSuccess> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
      body: Container(alignment: Alignment.center,
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage( 'assets/assetsimages/Frame 14233.png'),height: 142,width: 130,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Image(image: AssetImage( 'assets/assetsimages/Rewards Card - vertical - rev1.png'),),
            ),
            ElevatedButton(
              child: Text('Use E-Voucher Now',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RewardSuccessCode(),),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color( 0xFF65CAE4),
                 // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                ),
            ),
            SizedBox(height: 10,),
            // Container(width: 200,
            //   child: TextButton(
            //     child: Text('Redeem Later',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.white,
            //         padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            //         textStyle: TextStyle(
            //             fontSize: 30,
            //             fontWeight: FontWeight.bold)),
            //   ),
            // ),
            InkWell(
              child: Text('View My E-Vouchers',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
              onTap: (){
                Navigator.of(context).pop(false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
