import 'package:flutter/material.dart';

class Custom extends StatefulWidget {
  const Custom({Key? key}) : super(key: key);

  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  bool appBarIsShowed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: appBarIsShowed
            ? const Text(
                'Custom',
                style: TextStyle(color: Colors.black),
              )
            : null,
        elevation: 0,
        backgroundColor: appBarIsShowed
            ? Colors.white.withOpacity(0.97)
            : Colors.transparent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Custom',
                style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
              ),
            ),
            Expanded(
              child: Center(
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
                    const Text('Choose your moves.'),
                    const Text('Add reps, sets, and more.'),
                    const Text('Name it. Save it. Play it on reqpeat.')
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
