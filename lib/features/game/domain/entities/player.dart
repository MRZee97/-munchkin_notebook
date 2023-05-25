import 'package:flutter/widgets.dart';
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart';

class Player {
  Player(
      {required this.playerName,
      required this.playerGender,
      required this.playerColor});

  final String playerName;
  final Gender playerGender;
  final Color playerColor;
}
