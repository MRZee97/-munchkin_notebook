import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Otp extends StatelessWidget {
  Otp({
    Key? key,
    required this.controller,
  }) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 4,
              color: Colors.black,
            ),
          ),
        ),
        keyboardType: TextInputType.number,
        style: const TextStyle(
            color: Colors.black, fontSize: 48, fontFamily: "academy"),
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.isEmpty) {
            FocusScope.of(context).previousFocus();
          }
        },
      ),
    );
  }
}
