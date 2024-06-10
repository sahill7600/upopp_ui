import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';

class ReferAFriend extends StatefulWidget {
  const ReferAFriend({super.key});

  @override
  State<ReferAFriend> createState() => _ReferAFriendState();
}

class _ReferAFriendState extends State<ReferAFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Refer a Friend"),
      ),
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
             Container(margin: EdgeInsets.all(15),
                 child: Image(image: AssetImage("assets/assetsimages/Rectangle 530 (1).png"),fit: BoxFit.fill)),
             Container(margin: EdgeInsets.only(left: 50,right: 50),
                 child: Image(image: AssetImage("assets/assetsimages/image (11).png"),)),
             SizedBox(height: 10,),
             SizedBox(
               width: 285,height: 60 ,
              // alignment: Alignment.center,margin: EdgeInsets.all(10),
               child: Card(color: Color( 0xFF65CAE4),
                 child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 10.0),
                       child: Text("qwErt1234",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),),
                     ),
                     Icon(Icons.share)
                   ],
                 ),
               ),
             ),
             SizedBox(height: 10,),
             Container(margin: EdgeInsets.all(15),
                 child: Image(image: AssetImage("assets/assetsimages/image (12).png"),fit: BoxFit.fill)),
            // image (12)
           ],
         ),
       ),
       // Rectangle 530 (1)
    );
  }
}
