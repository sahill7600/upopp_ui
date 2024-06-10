import 'package:flutter/material.dart';

class Donate_POPPoints_Success extends StatefulWidget {
  const Donate_POPPoints_Success({super.key});

  @override
  State<Donate_POPPoints_Success> createState() => _Donate_POPPoints_SuccessState();
}

class _Donate_POPPoints_SuccessState extends State<Donate_POPPoints_Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(margin: EdgeInsets.only(right: 15),
            child: InkWell(child: Icon(Icons.clear),
              onTap: (){
                Navigator.pop(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Car_Rebates(),),
                // );
              },),
          )
        ],
      ),
      body: Column(
        children: [
      Padding(
        padding: const EdgeInsets.only(left: 35.0,right: 35,top: 140),
        child: Image(image: AssetImage( 'assets/assetsimages/image (44).png'),),
      ),
          SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20),
        child: Image(image: AssetImage( 'assets/assetsimages/Rewards Card - vertical - rev2.png'),),
      ),
          SizedBox(height: 10,),
          Container(width: 200,
            child: ElevatedButton(
              child: Text('Donate More',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => RewardSuccess(),),
                // );  image (44)
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
      ),
    );
  }
}
