import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'Car_RebatesSuccess.dart';

class Car_Rebates extends StatefulWidget {
  const Car_Rebates({super.key});

  @override
  State<Car_Rebates> createState() => _Car_RebatesState();
}

class _Car_RebatesState extends State<Car_Rebates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Redeem Car Park Rebates"),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(alignment: Alignment.center,margin: EdgeInsets.only(left: 25,right: 25,top: 30),
              child: Image.asset(
                'assets/assetsimages/image (25).png',
                // width: 85,
                // height: 30,
              ),
            ),
            SizedBox(height: 20,),
            Container(margin: EdgeInsets.only(left: 10,right: 10),
              child: Image.asset(
                'assets/assetsimages/Group 14041.png',
                // width: 85,
                // height: 30,
              ),
            ),
            Container(margin: EdgeInsets.only(left: 10,right: 10),
              child: Image.asset(
                'assets/assetsimages/image (26).png',
                // width: 85,
                // height: 30,
              ),
            ),
            SizedBox(height: 20,),
            Container(width: 200,
              child: ElevatedButton(
                child: Text('Confirm',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Car_RebatesSuccess(),),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color( 0xFF65CAE4),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    textStyle: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10,),
            Text("Car Park Rebates will be valid till 31 Dec 2023.",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10),)
          ],
        ),
      ),
    );
  }
}
