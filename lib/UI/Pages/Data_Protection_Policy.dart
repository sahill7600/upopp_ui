import 'package:flutter/material.dart';

class Data_Protection_Policy extends StatefulWidget {
  const Data_Protection_Policy({super.key});

  @override
  State<Data_Protection_Policy> createState() => _Data_Protection_PolicyState();
}

class _Data_Protection_PolicyState extends State<Data_Protection_Policy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Data Protection Policy"),),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 10),
            child: Column(
              children: [
                Text("Last Updated: [Date]\n\nAt UPOPP, we are committed to safeguarding your privacy and protecting your personal information. Please take a moment to review our concise Data Protection Policy."),
                SizedBox(height: 10,),
                Text.rich(
                  TextSpan(
                    text: '1. Information We Collect:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan (
                          text: 'We collect and process only the necessary information required for the functioning of the UPOPP mobile app. This may include your name, email address, profile picture, and other information you choose to share.',
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
                    text: '2. How We Use Your Information:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Your information is used to enhance your UPOPP experience, personalize content, and facilitate communication between users. We do not sell or share your personal information with third parties without your explicit consent.',
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
                    text: '3. Security Measures:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'We employ robust security measures to protect your data from unauthorized access, disclosure, alteration, and destruction. Our commitment is to ensure the confidentiality and integrity of your information.',
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
                    text: '4. Data Retention:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'We retain your personal information only for as long as necessary to provide you with the UPOPP services. If you choose to delete your account, your data will be securely deleted from our systems.',
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
                    text: '5. User Control:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'You have control over the information you share on UPOPP. You can update or delete your account at any time, and you have the right to know what information we hold about you.',
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
                    text: '6. Third-Party Services:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'While using UPOPP, you may encounter links to third-party services. Our Data Protection Policy does not extend to these external sites, and we encourage you to review their privacy policies.',
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
                    text: '7. Policy Updates:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'UPOPP may update this Data Protection Policy from time to time. You will be notified of any significant changes, and the latest version will be available on our website.',
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
                    text: '8. Contact Us:',
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'For questions or concerns about your data and our Data Protection Policy, please contact our Data Protection Officer at [dpo@upopp.com].',
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
