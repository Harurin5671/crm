import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          child: Column(
            children: [
              Text('Dashboard', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),),
              Text('Payments updates', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
            ],
          ),
        )
      ],
    );
  }
}