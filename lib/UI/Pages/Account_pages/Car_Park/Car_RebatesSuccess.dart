import 'package:flutter/material.dart';

class Car_RebatesSuccess extends StatefulWidget {
  const Car_RebatesSuccess({super.key});

  @override
  State<Car_RebatesSuccess> createState() => _Car_RebatesSuccessState();
}

class _Car_RebatesSuccessState extends State<Car_RebatesSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(margin: EdgeInsets.only(right: 15),
            child: InkWell(child: Icon(Icons.clear),
            onTap: (){
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Car_Rebates(),),
              // );
            },),
          )
        ],
      ),
      body: Column(
        children: [
          Container(alignment: Alignment.center,margin: EdgeInsets.only(left: 25,right: 25,top: 120),
            child: Image.asset(
              'assets/assetsimages/image (28).png',
              // width: 85,
              // height: 30,
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            child: Text('View My Car Park Rebates',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
            onPressed: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Car_RebatesSuccess(),),
              // );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color( 0xFF65CAE4),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
