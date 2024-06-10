import 'package:demo_upopp/UI/Pages/Account_pages/E_Voucher/E_Vocher_details.dart';
import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

class POPPoints extends StatefulWidget {
  const POPPoints({super.key});

  @override
  State<POPPoints> createState() => _POPPointsState();
}

class _POPPointsState extends State<POPPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your POPPoints"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                  child: Image.asset(
                    'assets/assetsimages/image (24).png', // Replace with your wheel image
                    // width: 167,
                    // height: 98,
                  ),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => POPPoints(),),
                    // );
                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child: Image.asset(
                    'assets/assetsimages/Frame 14261.png', // Replace with your wheel image
                    // width: 167,
                    // height: 98,
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => POPPoints(),),
                    );
                  },
                ),
                SizedBox(height: 10,),
                InkWell(
                  child: Image.asset(
                    'assets/assetsimages/Frame 14333.png', // Replace with your wheel image
                    // width: 167,
                    // height: 98,
                  ),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => POPPoints(),),
                    );
                  },
                ),
                SizedBox(height: 30,),
                Text("My E-Vouchers",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                SizedBox(height: 10,),
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
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
