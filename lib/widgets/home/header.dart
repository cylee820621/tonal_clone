import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle headerStyle = Theme.of(context).textTheme.headline4!.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Welcome,', style: headerStyle),
            Text('CY', style: headerStyle)
          ],
        ),
        CupertinoButton(
          borderRadius: BorderRadius.circular(50),
          padding: EdgeInsets.zero,
          color: Colors.purple,
          child: const Text(
            'C',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
