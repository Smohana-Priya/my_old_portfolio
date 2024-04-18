import 'package:flutter/material.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (int i = 0; i < 4; i++)
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.amber),
              child: const Icon(
                Icons.abc,
                size: 45,
              ),
            ),
          ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
