import 'package:flutter/widgets.dart';
import 'package:munchkin/features/chose_gender/presentation/page/chose_gender_page.dart';

class Player {
  Player(
      {required this.name,
      required this.gender,
      required this.color,
      required this.bonuses,
      required this.level});

  final String name;
  final Gender gender;
  final Color color;
  final int bonuses;
  final int level;
}
