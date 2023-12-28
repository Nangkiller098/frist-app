import 'package:flutter/material.dart';
import 'package:flutter_application_1/change_language_screen.dart';

class ClinicHomeScreen extends StatefulWidget {
  const ClinicHomeScreen({super.key});

  @override
  State<ClinicHomeScreen> createState() => _ClinicHomeScreenState();
}

class _ClinicHomeScreenState extends State<ClinicHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: const Text("Clinic App"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangeLangaugeScreenState()));
            },
            icon: const Icon(Icons.language),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, top: 16, right: 16),
            decoration: const BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            // height: 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  width: double.infinity,
                  child: const Text(
                    "Patients",
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/image.png',
                    alignment: Alignment.centerRight,
                    width: 100,
                    height: 100,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "120 active",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "120 delete",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
