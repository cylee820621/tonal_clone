import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle headerStyle = Theme.of(context).textTheme.headline3!.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome,',
                style: headerStyle,
              ),
              Text(
                'CY',
                style: headerStyle,
              )
            ],
          ),
          CircleAvatar(
            radius: 30,
            child: Text('C'),
          ),
        ],
      ),
    );
  }
}
