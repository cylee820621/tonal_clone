import 'package:flutter/material.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle mainTitle = Theme.of(context)
        .textTheme
        .headline6!
        .copyWith(color: Colors.white, fontWeight: FontWeight.bold);

    TextStyle subTitle = Theme.of(context)
        .textTheme
        .subtitle2!
        .copyWith(color: Colors.grey.shade200);

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Image.asset(
            'assets/1.jpg',
            height: 200,
            width: 330,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Intro to Tonal Workout', style: mainTitle),
                const SizedBox(height: 8),
                Text('21 Min Full All Levels', style: subTitle)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
