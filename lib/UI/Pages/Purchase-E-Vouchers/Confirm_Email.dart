import 'package:flutter/material.dart';

import 'Receipt.dart';

class Confirm_Email extends StatefulWidget {
  const Confirm_Email({super.key});

  @override
  State<Confirm_Email> createState() => _Confirm_EmailState();
}

class _Confirm_EmailState extends State<Confirm_Email> {
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
          // image (41)
          Padding(
            padding: const EdgeInsets.only(left: 40.0,right: 40,top: 40),
            child: Image.asset(
              'assets/assetsimages/image (47).png', // Replace with your wheel image
               width: 204,
              // height: 128,
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'email address',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
              textInputAction: TextInputAction.next,
              onEditingComplete: () => FocusScope.of(context).nextFocus(),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Type email address here';
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            child: Text('Proceed',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Receipt(),),
              );
            },
            style: ElevatedButton.styleFrom(fixedSize: Size(200, 42),
              backgroundColor: Color( 0xFF65CAE4),
              // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
            ),
          ),
          SizedBox(height: 20,),
          InkWell(child: Text("Edit Email",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12),),
          )
          //image (47)
        ],
      ),
    );
  }
}
