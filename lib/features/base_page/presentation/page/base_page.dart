import 'package:flutter/material.dart';
import 'package:munchkin/core/ui/constants/app_colors.dart';

class BasePage extends StatelessWidget {
  const BasePage(
      {required this.title,
      required this.body,
      required this.actions,
      super.key});
  final String title;
  final Widget body;
  final Widget actions;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
            bottom: MediaQuery.of(context).size.width * 0.05,
          ),
          decoration: const BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.all(Radius.circular(40)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: AppColors.titleColor,
                      ),
                    ),
                  ),
                  body
                ],
              ),
              actions,
            ],
          ),
        ),
      ),
    );
  }
}
