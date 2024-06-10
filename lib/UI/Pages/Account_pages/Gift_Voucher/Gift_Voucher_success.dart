import 'package:flutter/material.dart';

class Gift_Voucher_success extends StatefulWidget {
  const Gift_Voucher_success({super.key});

  @override
  State<Gift_Voucher_success> createState() => _Gift_Voucher_successState();
}

class _Gift_Voucher_successState extends State<Gift_Voucher_success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(margin: EdgeInsets.only(right: 15),
            child: InkWell(child: Icon(Icons.clear),
              onTap: (){
                Navigator.pop(context);
              },),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 120),
            child: Container(alignment: Alignment.bottomCenter,
                child: Image(image: AssetImage('assets/assetsimages/Frame 142289.png',))),
          ),
          SizedBox(height: 10,),
          Container(alignment: Alignment.center,
            child: ElevatedButton(
              child: Text('Go Back',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
              onPressed: () {
                Navigator.pop(context);
                //Frame 1423333
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => EventsSuccess(),),
                // );
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
                backgroundColor: Color( 0xFF65CAE4),
                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
