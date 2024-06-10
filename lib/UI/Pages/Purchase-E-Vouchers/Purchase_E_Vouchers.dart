import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

import 'Purchase_Details.dart';

class Purchase_E_Vouchers extends StatefulWidget {
  const Purchase_E_Vouchers({super.key});

  @override
  State<Purchase_E_Vouchers> createState() => _Purchase_E_VouchersState();
}

class _Purchase_E_VouchersState extends State<Purchase_E_Vouchers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Purchase E-Vouchers"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/rewards100.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Purchase_Details(),),
                  );
                },
              ),SizedBox(height: 5,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/Group 1429122.png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Mall_Details(),),
                  // );
                },
              ),SizedBox(height: 5,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/rewards (101).png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Mall_Details(),),
                  // );
                },
              ),SizedBox(height: 5,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/rewards (102).png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Mall_Details(),),
                  // );
                },
              ),SizedBox(height: 5,),
              InkWell(
                child: Image.asset(
                  'assets/assetsimages/rewards (103).png', // Replace with your wheel image
                  // width: 171,
                  // height: 128,
                ),
                onTap: (){
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Mall_Details(),),
                  // );
                },
              ),SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}
