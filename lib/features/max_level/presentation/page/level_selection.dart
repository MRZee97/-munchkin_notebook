import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';

class LvlSelectionGroup extends StatefulWidget {
  const LvlSelectionGroup({
    super.key,
    required this.controller,
  });

  final MaxLevelController controller;
  // final Function(int) onLevelChanged;

  @override
  State<LvlSelectionGroup> createState() => _LvlSelectionGroupState();
}

class _LvlSelectionGroupState extends State<LvlSelectionGroup> {
  late int _currentLevel;

  @override
  void initState() {
    _currentLevel = widget.controller.getCurrentLevel;
    widget.controller.setLevelListener((level) {
      setState(() {
        _currentLevel = level;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: IconButton(
              iconSize: 70,
              icon: const Icon(
                Icons.arrow_left_outlined,
                color: AppColors.titleColor,
              ),
              onPressed: () {
                widget.controller.decrementLevel();
              }),
        ),
        Text(_currentLevel.toString(),
            style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: AppColors.titleColor,
                fontFamily: "academy")),
        IconButton(
            iconSize: 70,
            icon: const Icon(
              Icons.arrow_right_outlined,
              color: AppColors.titleColor,
            ),
            onPressed: () {
              widget.controller.incrementLevel();
            })
      ],
    );
  }
}

class MaxLevelController {
  static const int _defaultLevel = 7;
  static const int _minLevel = 3;
  static const int _maxLevel = 15;

  MaxLevelController({
    int initialvalue = _defaultLevel,
  }) : _currentValue = initialvalue;

  int _currentValue;
  Function(int)? _onLevelChanged;

  int get getCurrentLevel => _currentValue;

  void setLevelListener(Function(int) onLevelChanged) {
    _onLevelChanged = onLevelChanged;
  }

  void setLevel(int value) {
    if (value <= MaxLevelController._maxLevel &&
        value >= MaxLevelController._minLevel) {
      _currentValue = value;
      _onLevelChanged?.call(_currentValue);
    }
  }

  void incrementLevel() {
    if (_currentValue < MaxLevelController._maxLevel) {
      _currentValue++;
      _onLevelChanged?.call(_currentValue);
    }
  }

  void decrementLevel() {
    if (_currentValue > MaxLevelController._minLevel) {
      _currentValue--;
      _onLevelChanged?.call(_currentValue);
    }
  }
}
