import 'package:flutter/material.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Terms & Conditions"),),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Column(
              children: [
                Text("Last Updated: [Date]\n\nWelcome to UPOPP, your go-to app for seamless connections and memorable moments. Please take a moment to review our brief terms and conditions"),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '1. Acceptance of Terms: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'By using the UPOPP mobile app, you agree to comply with and be bound by these terms and conditions.',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '2. User Conduct: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' Users are expected to use the UPOPP app responsibly and respect the rights of other users. Any misuse or violation may result in the suspension or termination of your account.',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '3. Privacy: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Your privacy is important to us. We handle your personal information in accordance with our Privacy Policy. Please review it to understand our practices',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '4. Content Sharing: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Users are responsible for the content they share on UPOPP. Any inappropriate, offensive, or illegal content will be removed, and violators may face account suspension.',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '5. App Updates: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' UPOPP may release updates to enhance user experience. It is your responsibility to keep your app updated to enjoy the latest features and improvements.',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '6. Account Security: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Safeguard your login credentials. You are responsible for any activity on your account. Report any unauthorized access promptly to our support team.',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '7. Termination: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: ' UPOPP reserves the right to terminate or suspend user accounts for violations of these terms and conditions or for any reason at its discretion.',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '8. Dispute Resolution: ',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Any disputes arising from the use of the UPOPP app shall be resolved through amicable discussions. If not resolved, the matter may be subject to the laws of [Your Jurisdiction].\n\nBy using the UPOPP app, you acknowledge that you have read, understood, and agreed to these terms and conditions. For any inquiries or concerns, please contact our support team at [support@upopp.com].\n\nThank you for choosing UPOPP for your social connections!',
                          style: TextStyle(
                              fontSize: 12,fontWeight: FontWeight.w400
                          )),
                      // can add more TextSpans here...
                    ],
                  ),
                ),
                SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
