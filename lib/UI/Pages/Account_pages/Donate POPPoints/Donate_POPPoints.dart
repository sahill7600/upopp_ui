import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

import 'Donate_POPPoints_Details.dart';

class Donate_POPPoints extends StatefulWidget {
  const Donate_POPPoints({super.key});

  @override
  State<Donate_POPPoints> createState() => _Donate_POPPointsState();
}

class _Donate_POPPointsState extends State<Donate_POPPoints> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Donate POPPoints"),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Image(image: AssetImage( 'assets/assetsimages/Frame 1420211.png'),height: 25,width: 75,),
        )],),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/vertical - rev1.png')),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Donate_POPPoints_Details(),),
                    );
                  },),
             SizedBox(height: 10,),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/vertical - rev2.png')),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Donate_POPPoints(),),
                 //   );
                  },),
                SizedBox(height: 10,),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/vertical - rev3.png')),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Donate_POPPoints(),),
                    // );
                  },),
                SizedBox(height: 10,),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/vertical - rev3.png')),
                  onTap: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Donate_POPPoints(),),
                    // );
                  },),
                SizedBox(height: 10,),

             //   vertical - rev1
              ],
            ),
          ),
        ),
      ),
    );
  }
}
