// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:video_conference/uitil/util.dart';
import 'package:video_conference/views/video_conference_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final conferenceController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ///button style
    var buttonStyle = ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF0046DA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      fixedSize: Size(MediaQuery.sizeOf(context).width * 0.4, 50),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Image.network(
                  "https://lh3.googleusercontent.com/dp2xcfrJubnSuLdCEvUoOTWZ5962WulRkMi0oZgUmmuLPGJAy6WoYTp7o-bIdMhOTrE"),
              Text("Your user id: $userId"),
              Text("Please test with 2 or more devices"),
              SizedBox(height: 20),
              TextFormField(
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: conferenceController,
                decoration: InputDecoration(
                    labelText: "Join a Meeting by Input an Conference ID",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: buttonStyle,
                      child: Text(
                        "Join A Meeting",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => goToMeetingPage(
                        context: context,
                        conferenceId: conferenceController.text,
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      style: buttonStyle,
                      child: Text(
                        "New Meeting",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => goToMeetingPage(
                        context: context,
                        conferenceId: randomConferenceId,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///go to meeting page
  goToMeetingPage(
      {required BuildContext context, required String conferenceId}) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VideoConferencePage(conferenceId: conferenceId),
      ),
    );
  }
}
