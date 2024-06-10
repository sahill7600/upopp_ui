import 'package:flutter/material.dart';
import 'Confirmation.dart';

class Gift_Someone extends StatefulWidget {
  const Gift_Someone({super.key});

  @override
  State<Gift_Someone> createState() => _Gift_SomeoneState();
}

class _Gift_SomeoneState extends State<Gift_Someone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gift Someone"),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Column(
              children: [
                Container(alignment: Alignment.topLeft,
                    child: Text("Enter your Friend’s Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)),
                SizedBox(height: 8,),
                TextField (
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  labelText: 'Friend’s Name',
                  hintText: 'Friend’s Name'
              ),
            ),
                SizedBox(height: 20,),
                Container(alignment: Alignment.topLeft,
                    child: Text("Choose a Message to your Friend",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)),
                SizedBox(height: 8,),
                Image(image: AssetImage('assets/assetsimages/image (50).png',)),
                SizedBox(height: 8,),
                 Image(image: AssetImage('assets/assetsimages/image (51).png',)),
                SizedBox(height: 8),
                Image(image: AssetImage('assets/assetsimages/image (52).png',)),
                SizedBox(height: 8,),
                 Image(image: AssetImage('assets/assetsimages/image (53).png',)),
                SizedBox(height: 8,),
                Image(image: AssetImage('assets/assetsimages/image (54).png',)),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('OR'),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(alignment: Alignment.topLeft,child: Text("Write your Own Message",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),)),
                SizedBox(height: 10,),
                TextField(
                  // controller: messageController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 3, // Allow multiline input
                  decoration: InputDecoration(
                    labelText: 'Message',
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 10,),
                Center(child: Text("Maximum of 1000 characters",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),)),
                SizedBox(height: 10,),
                ElevatedButton(
                  child: Text('Preview Message',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConfirmationScreen(),),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color( 0xFF65CAE4),fixedSize: Size(200, 42)
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
                SizedBox(height: 15,),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
