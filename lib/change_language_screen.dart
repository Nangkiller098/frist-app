import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
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
        title: Text("change_language".tr()),
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
              onTap: () {
                context.setLocale(const Locale('en', 'US'));
                if (kDebugMode) {
                  print(context.locale.toString());
                }
              },
              leading: Image.asset(
                "assets/lang/uk.jpg",
                width: 60,
                height: 50,
              ),
              title: const Text("English"),
              trailing: context.locale.toString() != "en_US"
                  ? const Text("")
                  : const Icon(
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
              onTap: () {
                context.setLocale(const Locale('km', 'KH'));
                if (kDebugMode) {
                  print(context.locale.toString());
                }
              },
              leading: Image.asset(
                "assets/lang/kh.jpg",
                width: 60,
                height: 50,
              ),
              title: const Text("ខ្មែរ"),
              trailing: context.locale.toString() == "en_US"
                  ? const Text("")
                  : const Icon(
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
