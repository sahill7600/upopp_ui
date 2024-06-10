import 'package:demo_upopp/UI/Pages/Account_pages/Gift_SomeOne/Gift_SomeOne.dart';
import 'package:demo_upopp/UI/Pages/Purchase-E-Vouchers/Purchase_E_Vouchers.dart';
import 'package:flutter/material.dart';

class Purchase_Gift_Voucher extends StatefulWidget {
  const Purchase_Gift_Voucher({super.key});

  @override
  State<Purchase_Gift_Voucher> createState() => _Purchase_Gift_VoucherState();
}

class _Purchase_Gift_VoucherState extends State<Purchase_Gift_Voucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Purchase E-Vouchers"),),
      body: Column(
        children: [
          Center(child: Text("The perfect gift for \nevery occasion",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 32,), textAlign: TextAlign.center,)),
          Center(child: Text("Orci donec fringilla vestibulum a \ntempus nisi.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.grey), textAlign: TextAlign.center,)),
          SizedBox(height: 20,),
          Image(image: AssetImage('assets/assetsimages/image (49).png',),),
          SizedBox(height: 40,),
          ElevatedButton(
            child: Text('Buy For Me',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Purchase_E_Vouchers(),),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(200, 42)
              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            child: Text('Gift Someone',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Gift_SomeOne(),),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(200, 42)
              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
          ),
        ],
      ),
    );
  }
}
