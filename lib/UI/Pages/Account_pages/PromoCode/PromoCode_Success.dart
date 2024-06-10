import 'package:flutter/material.dart';

class PromoCode_Success extends StatefulWidget {
  const PromoCode_Success({super.key});

  @override
  State<PromoCode_Success> createState() => _PromoCode_SuccessState();
}

class _PromoCode_SuccessState extends State<PromoCode_Success> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
          Container(alignment: Alignment.center,margin: EdgeInsets.only(top: 150),
          child: Image(image: AssetImage("assets/assetsimages/image (15).png"),)),
          ElevatedButton(
            child: Text('View My Account',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color( 0xFF65CAE4),
              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
          ),
        ],
      ),
    );
  }
}
