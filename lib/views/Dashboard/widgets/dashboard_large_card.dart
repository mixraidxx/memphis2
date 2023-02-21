import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'info_card.dart';

class DashBoardCardLargeScreen extends StatelessWidget {
  const DashBoardCardLargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const cardInfo(tittle: "tittle", value: "5", topColor: Colors.red),
        SizedBox(
          width: _width / 64,
        ),
        const cardInfo(tittle: "tittle", value: "5", topColor: Colors.red),
        SizedBox(
          width: _width / 64,
        ),
        const cardInfo(tittle: "tittle", value: "5", topColor: Colors.red)
      ],
    );
  }
}
