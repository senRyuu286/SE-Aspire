import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final int currentIndex;
  final int count;

  const PageIndicator({
    super.key,
    required this.currentIndex,
    this.count = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (index) {
        final bool isActive = index == currentIndex;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: isActive ? 26 : 8,
          decoration: BoxDecoration(
            color: isActive ? Colors.black : const Color(0xFFD4E0FF),
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}
