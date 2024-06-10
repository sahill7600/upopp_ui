import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'Mall_Details.dart';

class UOL_Malls extends StatefulWidget {
  const UOL_Malls({super.key});

  @override
  State<UOL_Malls> createState() => _UOL_MallsState();
}

class _UOL_MallsState extends State<UOL_Malls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UOL Malls"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: Column(children: [
          InkWell(
            child: Image.asset(
              'assets/assetsimages/rewards11.png', // Replace with your wheel image
              // width: 171,
              // height: 128,
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mall_Details(),),
              );
            },
          ),
          SizedBox(height: 5,),
          InkWell(
            child: Image.asset(
              'assets/assetsimages/rewards (11).png', // Replace with your wheel image
              // width: 171,
              // height: 128,
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mall_Details(),),
              );
            },
          ),
          SizedBox(height: 5,),
          InkWell(
            child: Image.asset(
              'assets/assetsimages/rewards (12).png', // Replace with your wheel image
              // width: 171,
              // height: 128,
            ),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Mall_Details(),),
              );
            },
          ),
        ],),
      ),
    );
  }
}
