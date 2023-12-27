import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ChangeLangaugeScreenState extends StatefulWidget {
  const ChangeLangaugeScreenState({super.key});
  @override
  State<ChangeLangaugeScreenState> createState() => _State();
}

class _State extends State<ChangeLangaugeScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Change_Language".tr()),
      ),
      body: ListView(
        children: [
          //English
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              onTap: () {},
              leading: Image.asset(
                "images/uk.jpg",
                width: 60,
                height: 50,
              ),
              title: const Text("English"),
              trailing: const Icon(
                Icons.check_circle,
                color: Colors.cyan,
              ),
            ),
          ),

          //khmer
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.05),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: ListTile(
              onTap: () {},
              leading: Image.asset(
                "images/khmer.jpg",
                width: 60,
                height: 50,
              ),
              title: const Text("ខ្មែរ"),
              trailing: const Icon(
                Icons.check_circle,
                color: Colors.cyan,
              ),
            ),
          )
        ],
      ),
    );
  }
}
