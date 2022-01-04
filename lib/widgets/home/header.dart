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
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff8a10e0),
                Color(0xff8a10e0),
                Color(0xff6020dd),
                Color(0xff4a29d9),
                Color(0xff3133d7),
                Color(0xff0c42d2)
              ],
            ),
          ),
          child: CupertinoButton(
            borderRadius: BorderRadius.circular(50),
            padding: EdgeInsets.zero,
            child: const Text(
              'C',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
