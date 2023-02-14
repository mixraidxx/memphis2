import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LargeScreeen extends StatelessWidget {
  const LargeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          color: Colors.red,
        )),
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }
}
