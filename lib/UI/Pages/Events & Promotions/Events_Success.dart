import 'package:flutter/material.dart';

import 'Event_Ticcket.dart';

class EventsSuccess extends StatefulWidget {
  const EventsSuccess({super.key});

  @override
  State<EventsSuccess> createState() => _EventsSuccessState();
}

class _EventsSuccessState extends State<EventsSuccess> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:40.0,right: 40),
          child: Column(
            children: [
              Image(image: AssetImage('assets/assetsimages/Frame 1423333.png',), fit: BoxFit.contain,),
              SizedBox(height: 5,),
              Image(image: AssetImage('assets/assetsimages/image (34).png',), fit: BoxFit.contain,),
              SizedBox(height: 5,),
              Container(alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text('View Event Ticket',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
                  onPressed: () {
                    //Frame 1423333
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Event_Ticcket(),),
                    );
                  },
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                    backgroundColor: Color( 0xFF65CAE4),
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Container(alignment: Alignment.center,
                child: ElevatedButton(
                  child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color( 0xFF65CAE4)),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(fixedSize: Size(150, 42),
                      backgroundColor: Colors.white,side: BorderSide(color: Color( 0xFF65CAE4))
                    // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              InkWell(child: Text("More Events"),
              onTap: (){},),
              SizedBox(height: 5,)
            ],
          ),
        ),
      ),
    );
  }
}
