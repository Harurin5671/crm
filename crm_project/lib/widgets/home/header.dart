import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.title, required this.subtitle});

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          child: Column(
            children: [
              Text(
                title,
                // 'Dashboard',
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
              ),
              Text(
                subtitle,
                // 'Payments updates',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }
}
