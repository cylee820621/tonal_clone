import 'package:flutter/material.dart';
import 'package:tonal_clone/widgets/home/home_widgets.dart';

class StrenghCard extends StatelessWidget {
  const StrenghCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '0',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
            ),
            const SizedBox(height: 16),
            const Text('TOTAL ACHIEVEMENTS'),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomCircel(
                  content: '10',
                  subtitle: 'Workouts',
                  subtitleNum: '0',
                ),
                CustomCircel(
                  content: '50k',
                  subtitle: 'lbs',
                  subtitleNum: '0',
                ),
                CustomCircel(
                  content: '5',
                  subtitle: 'Weeks',
                  subtitleNum: '0',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
