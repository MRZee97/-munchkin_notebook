import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:munchkin/features/game/domain/entities/player.dart';
import 'package:munchkin/navigation/router.gr.dart';

class PlayerCharacteristics extends StatelessWidget {
  const PlayerCharacteristics({
    super.key,
    required TextStyle textRenderingMultiplePlayers,
    required this.bonusPoints,
    required this.player,
  }) : _textRenderingMultiplePlayers = textRenderingMultiplePlayers;

  final TextStyle _textRenderingMultiplePlayers;
  final int bonusPoints;
  final Player player;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () => context.router.push(SinglePlayerRoute(player: player)),
            child: Row(
              children: [
                Text(
                  player.name,
                  style: _textRenderingMultiplePlayers,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AppLocalizations.of(context)!.starImage, height: 20),
              Text(
                player.level.toString(),
                style: _textRenderingMultiplePlayers,
              ),
              Image.asset(AppLocalizations.of(context)!.vectorImage,
                  height: 20),
              Text(
                player.bonuses.toString(),
                style: _textRenderingMultiplePlayers,
              ),
              Image.asset(AppLocalizations.of(context)!.unionImage, height: 20),
              Text(
                bonusPoints.toString(),
                style: _textRenderingMultiplePlayers,
              ),
              const SizedBox(width: 119),
              const Icon(
                Icons.more_horiz,
                color: AppColors.titleColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
