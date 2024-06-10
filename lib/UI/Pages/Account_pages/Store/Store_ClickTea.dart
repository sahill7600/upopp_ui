import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

class StoreClickTea extends StatefulWidget {
  const StoreClickTea({super.key});

  @override
  State<StoreClickTea> createState() => _StoreClickTeaState();
}

class _StoreClickTeaState extends State<StoreClickTea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Store"),),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
          child: SingleChildScrollView(
              child: Image(image: AssetImage("assets/assetsimages/image (14).png"),))),
    );
  }
}
