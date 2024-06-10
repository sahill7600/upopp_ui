import 'package:flutter/material.dart';

class RewardSuccessCode extends StatefulWidget {
  const RewardSuccessCode({super.key});

  @override
  State<RewardSuccessCode> createState() => _RewardSuccessCodeState();
}

class _RewardSuccessCodeState extends State<RewardSuccessCode> {
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
            Container(margin: EdgeInsets.only(left: 15,right: 15),
             height: 133,width: 350,
             child: Card(
               child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                   Column(mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("COUPON CODE",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                       Text("UPOPP123",style: TextStyle(fontSize: 28,fontWeight: FontWeight.w600),),
                     ],
                   ),
                   InkWell(child: Icon(Icons.copy),onTap: (){},)
                 ],
               ),
             ),
           )

          ],
        ),
      ),
    );
  }
}
