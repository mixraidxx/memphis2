import 'package:flutter/material.dart';

import '../../../constants/style.dart';

class cardInfo extends StatelessWidget {
  final String tittle;
  final String value;
  final Color topColor;
  const cardInfo({
    super.key,
    required this.tittle,
    required this.value,
    required this.topColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration:
          BoxDecoration(color: light, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            height: 5,
            color: topColor,
          ),
          const Spacer(),
          Text(
            tittle,
            style: const TextStyle(fontSize: 16),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
