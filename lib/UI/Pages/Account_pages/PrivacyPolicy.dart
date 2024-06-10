import 'package:flutter/material.dart';

import 'Account_Delet.dart';

class Privacy_Policy extends StatefulWidget {
  const Privacy_Policy({super.key});

  @override
  State<Privacy_Policy> createState() => _Privacy_PolicyState();
}

class _Privacy_PolicyState extends State<Privacy_Policy> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Privacy Policy"),),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0,right: 10),
        child: Column(
          children: [
            Text("Consent to Delete  U-POPP Membership",style: TextStyle(fontSize: 32,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text.rich(
              TextSpan(
                text: 'Please note that membership deletion is ',
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                children: <TextSpan>[
                  TextSpan(
                      text: 'IRREVERSIBLE.',
                      style: TextStyle(
                          fontSize: 14,fontWeight: FontWeight.w700
                      )),
                  // can add more TextSpans here...
                ],
              ),
            ),

            Text("If you delete your membership, your participation in U-POPP Loyalty Programme shall terminate immediately and all loyalty points (“POPPoints”) accumulated by you and any existing E-Vouchers shall be forfeited.\n\nFor the avoidance of doubt, you shall not be entitled for any compensation in respect of such forfeiture of POPPoints and / or E-Vouchers.\n\nUpon successful deletion, your registered mobile number will be removed from the database, however, U-POPP will continue to hold transactional information for audit purpose. "
               , style: TextStyle(
                fontSize: 14,fontWeight: FontWeight.w400
            )),
            SizedBox(height: 30,),
            CheckboxListTile(
              title: Text("I have read and understood the above and would like to delete my U-POPP Membership.",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
            ),
            ElevatedButton(
              child: Text('Continue',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.white),),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AccountDeleted(),),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color( 0xFF65CAE4),
                // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
            ),
            SizedBox(height: 20,),
            InkWell(
              child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black),),
              onTap: (){},
            ),

          ],
        ),
      ),
    );
  }
}
