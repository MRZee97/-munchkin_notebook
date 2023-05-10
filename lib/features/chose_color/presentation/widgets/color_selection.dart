import 'package:flutter/material.dart';

class ColorSelection extends StatefulWidget {
  const ColorSelection({
    super.key,
    required this.itemCount,
    required this.colors,
    required this.controller,
  });

  final int itemCount;
  final List colors;
  final ColorController controller;

  @override
  State<ColorSelection> createState() => _ColorSelectionState();
}

class _ColorSelectionState extends State<ColorSelection> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisExtent: 40,
          mainAxisSpacing: 10,
        ),
        itemCount: widget.itemCount,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                widget.controller.setIndex(index);
              });
            },
            child: Container(
              child: widget.controller.indexColor == index
                  ? Icon(
                      Icons.check,
                      color: Colors.black,
                    )
                  : null,
              width: 30.0,
              decoration: BoxDecoration(
                color: widget.colors[index],
                shape: BoxShape.circle,
              ),
            ),
          );
        });
  }
}

class ColorController {
  ColorController({required int initialvalue}) : indexColor = initialvalue;

  int indexColor;

  void setIndex(int value) {
    indexColor = value;
  }
}
