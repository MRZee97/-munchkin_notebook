import 'package:flutter/material.dart';

class ColorSelection extends StatefulWidget {
  const ColorSelection({
    super.key,
    required this.itemCount,
    required this.colors,
    required this.onTap,
    required this.choseColor,
  });

  final int itemCount;
  final List colors;
  final Function(Color) onTap;
  final Color choseColor;
  static const containerWidth = 30.0;

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
              widget.onTap(widget.colors[index]);
            },
            child: Container(
              width: ColorSelection.containerWidth,
              decoration: BoxDecoration(
                color: widget.colors[index],
                shape: BoxShape.circle,
              ),
              child: widget.choseColor == widget.colors[index]
                  ? const Icon(
                      Icons.check,
                      color: Colors.black,
                    )
                  : null,
            ),
          );
        });
  }
}
