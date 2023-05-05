import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({
    super.key,
  });

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool _sex = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            setState(() {
              _sex = false;
            });
          },
          child: Opacity(
            opacity: _sex ? 1.0 : 0.5,
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset("assets/images/man.png"),
            ),
          ),
        ),
        const Padding(
            padding: EdgeInsets.symmetric(
          horizontal: 64,
        )),
        InkWell(
          onTap: () {
            setState(() {
              _sex = true;
            });
          },
          child: Opacity(
            opacity: _sex ? 0.5 : 1.0,
            child: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset("assets/images/woman.png"),
            ),
          ),
        ),
      ],
    );
  }
}
