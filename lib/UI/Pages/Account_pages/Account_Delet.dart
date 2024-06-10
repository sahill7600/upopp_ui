import 'package:flutter/material.dart';

class AccountDeleted extends StatefulWidget {
  const AccountDeleted({super.key});

  @override
  State<AccountDeleted> createState() => _AccountDeletedState();
}

class _AccountDeletedState extends State<AccountDeleted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Account Successfully Deleted",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text("Your U-POPP account has been successfully deleted.\n\nThanks for being a part of our community.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            SizedBox(height: 30,),
            ElevatedButton(
              child: Text('Okay',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => AccountDeleted(),),
                // );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color( 0xFF65CAE4),
                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
