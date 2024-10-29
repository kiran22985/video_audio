import 'dart:math';

///generate user id with 6 digit length

final String userId = Random().nextInt(900000 + 100000).toString();

///generate conference id with 10 digit length
final String randomConferenceId =
    (Random().nextInt(1000000000) * 10 + Random().nextInt(10))
        .toString()
        .padLeft(10, "0");
