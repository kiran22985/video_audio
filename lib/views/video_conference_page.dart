import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:video_conference/uitil/util.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';

class VideoConferencePage extends StatelessWidget {
  final String conferenceId;
  VideoConferencePage({super.key, required this.conferenceId});
  final int appId = int.parse(dotenv.get("ZEGO_APP_ID"));
  final String appSign = dotenv.get("ZEGO_APP_SIGN");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: appId,
        appSign: appSign,
        userID: 'user_id',
        userName: 'User $userId',
        conferenceID: randomConferenceId,
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}
