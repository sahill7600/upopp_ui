import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'RewadsRedem.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rewards"),
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
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                //Rectangle 529.png
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/Rewardc1.png')),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RewadsRedem(),),
                    );
                  },),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/Rewardc2.png')),
                onTap:  (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => RewadsRedem(),),
                    // );
                  },),
                InkWell(
                    child: Image(image: AssetImage( 'assets/assetsimages/Rewardc3.png')),
                onTap:  (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RewadsRedem(),),
                    );
                  },),
                InkWell(
                    child: Image(image: AssetImage( 'assets/assetsimages/Rewardc4.png')),
                onTap:  (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RewadsRedem(),),
                    );
                  },),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/Rewardc1.png')),
                  onTap:  (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RewadsRedem(),),
                    );
                  },),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/Rewardc2.png')),
                  onTap:  (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => RewadsRedem(),),
                    // );
                  },),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/Rewardc3.png')),
                  onTap:  (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RewadsRedem(),),
                    );
                  },),
                InkWell(
                  child: Image(image: AssetImage( 'assets/assetsimages/Rewardc4.png')),
                  onTap:  (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RewadsRedem(),),
                    );
                  },),
              ],
            ),
          ),
        ),
      )
    );
  }

}
