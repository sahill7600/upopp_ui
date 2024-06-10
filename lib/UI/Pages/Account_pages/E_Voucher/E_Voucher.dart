import 'package:demo_upopp/UI/Pages/AboutView.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

import 'E_Vocher_details.dart';

class E_Voucher extends StatefulWidget {
  const E_Voucher({super.key});

  @override
  State<E_Voucher> createState() => _E_VoucherState();
}

class _E_VoucherState extends State<E_Voucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My E_Voucher"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: Column(
        children: [
          InkWell(
            child: Image.asset(
              'assets/assetsimages/e-vouchers (2).png', // Replace with your wheel image
              // width: 167,
              // height: 98,
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => E_Voucher_Details(),),
              );
            },
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Image.asset(
              'assets/assetsimages/Group 14287.png', // Replace with your wheel image
              // width: 167,
              // height: 98,
            ),
            onTap: (){},
          ),
          SizedBox(height: 10,),
          InkWell(
            child: Image.asset(
              'assets/assetsimages/e-vouchers (1).png', // Replace with your wheel image
              // width: 167,
              // height: 98,
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => E_Voucher_Details(),),
              );
            },
          ),
          SizedBox(height: 20,),
          InkWell(
            child: Image.asset(
              'assets/assetsimages/Frame 14223.png', // Replace with your wheel image
              // width: 167,
              // height: 98,
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutView(),),
              );
            },
          ),
        ],
      ),
    );
  }
}
