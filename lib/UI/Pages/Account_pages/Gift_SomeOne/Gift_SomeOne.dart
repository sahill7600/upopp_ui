import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

import 'Gift_Purchase_Details.dart';


class Gift_SomeOne extends StatefulWidget {
  const Gift_SomeOne({super.key});

  @override
  State<Gift_SomeOne> createState() => _Gift_SomeOneState();
}

class _Gift_SomeOneState extends State<Gift_SomeOne> {

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
                      builder: (context) => Gift_Purchase_Details(),),
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
