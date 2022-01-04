import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 24,
              top: 40,
              child: Text(
                'Custom',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Create your own!',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(height: 24),
                  Text('Choose your moves.'),
                  Text('Add reps, sets, and more.'),
                  Text('Name it. Save it. Play it on reqpeat.')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
