import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

import 'Store_ClickTea.dart';
import 'Store_clickHm.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Store"),
      ),
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
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14052.png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickTea(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14063.png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickHM(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14064 (3).png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickTea(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14065 (1).png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickHM(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14067.png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickTea(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14052.png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickTea(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14063.png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickHM(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14064 (3).png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickTea(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14065 (1).png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickHM(),),
                  );
                },
              ),
              InkWell(
                child: Container(margin: EdgeInsets.only(left: 10,right: 10,top: 10),
                    child: Image(image: AssetImage("assets/assetsimages/Group 14067.png"),)),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoreClickTea(),),
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
