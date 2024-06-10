import 'package:demo_upopp/Utils/BottomAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_faq/flutter_faq.dart';

class FAQs extends StatefulWidget {
  const FAQs({super.key});

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FAQs"),
      ),
      extendBody: true,
      floatingActionButton: FloatingActionButton(shape: CircleBorder(),
        onPressed: () {},backgroundColor: Color( 0xFF65CAE4),
        child: const Icon(Icons.camera_alt,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: HomePageButtonNavigationBar(currentIndex: 0, onTap: (int ) {  },),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FAQ(
                question: "What is U-POPP?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "How do I download U-POPP?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "Is UPOPP free to use?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "How do I create an account?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "What should I do if I forgot my password?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "How can I contact support?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "Can I use U-POPP on multiple devices?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "How do I update U-POPP to the latest version?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "Are my transactions and personal information secure?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
              Divider(
                indent: 10,endIndent: 10,
              ),
              FAQ(
                question: "How can I delete my account?",
                answer: data,
                expandedIcon: const Icon(Icons.minimize),
                collapsedIcon: const Icon(Icons.add),isExpanded: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String data = "You can download UPOPP from the App Store (for iOS) or Google Play Store (for Android) by searching for UPOPP and following the installation prompts.";
