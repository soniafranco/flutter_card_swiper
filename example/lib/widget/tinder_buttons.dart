import 'package:flutter/material.dart';

class TinderRowButtons extends StatelessWidget {
  const TinderRowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TinderButton(
          icon: ImageIcon(
            AssetImage('assets/images/close.png'),
            color: Color.fromRGBO(255, 0, 138, 1),
          ),
          label: 'Scorri',
        ),
        SizedBox(
          width: 27.5,
        ),
        TinderButton(
          icon: ImageIcon(
            AssetImage('assets/images/star_outlined.png'),
            color: Colors.black,
          ),
          padding: EdgeInsets.all(16),
          iconSize: 32,
        ),
        SizedBox(
          width: 27.5,
        ),
        TinderButton(
          icon: ImageIcon(
            AssetImage('assets/images/message.png'),
            color: Color.fromRGBO(252, 218, 21, 1),
          ),
          label: 'Invita',
        ),
      ],
    );
  }
}

class TinderButton extends StatelessWidget {
  final ImageIcon icon;
  final double iconSize;
  final EdgeInsets padding;
  final String label;
  const TinderButton({
    required this.icon,
    this.iconSize = 24,
    this.padding = const EdgeInsets.all(20),
    this.label = '',
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint(label);
      },
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              blurRadius: 12,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            const SizedBox(
              height: 4,
            ),
            if (label.isNotEmpty)
              Text(
                label,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
          ],
        ),
      ),
    );
  }
}
