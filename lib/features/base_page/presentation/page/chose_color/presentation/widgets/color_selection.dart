import 'package:flutter/material.dart';

class ColorSelection extends StatefulWidget {
  const ColorSelection({
    super.key,
    required this.itemCount,
    required this.colors,
  });

  final int itemCount;
  final List colors;

  @override
  State<ColorSelection> createState() => _ColorSelectionState();
}

class _ColorSelectionState extends State<ColorSelection> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                _selectedIndex = index;
              });
            },
            child: Container(
              child: _selectedIndex == index
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
