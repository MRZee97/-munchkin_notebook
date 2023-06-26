import 'package:flutter/material.dart';
import 'package:munchkin/features/enter_code/presentation/widgets/pin_code_field.dart';

class RenderingPin extends StatelessWidget {
  const RenderingPin({
    super.key,
    required this.numberCells,
    required this.pincodes,
  });

  final int numberCells;
  final List pincodes;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for (int k = 0; k < numberCells; k++)
          PinCodeField(controller: pincodes[k]),
      ],
    );
  }
}
