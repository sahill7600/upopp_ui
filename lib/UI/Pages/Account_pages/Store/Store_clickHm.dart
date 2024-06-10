import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

class StoreClickHM extends StatefulWidget {
  const StoreClickHM({super.key});

  @override
  State<StoreClickHM> createState() => _StoreClickHMState();
}

class _StoreClickHMState extends State<StoreClickHM> {
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
      body: Image(image: AssetImage("assets/assetsimages/image (13).png"),),
    );
  }
}
