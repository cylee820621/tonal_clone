import 'package:flutter/material.dart';
import '../widgets/home/home_widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool appBarIsShowed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: appBarIsShowed
            ? const Text(
                'Tonal',
                style: TextStyle(color: Colors.black),
              )
            : null,
        elevation: 0,
        backgroundColor: appBarIsShowed
            ? Colors.white.withOpacity(0.97)
            : Colors.transparent,
      ),
      body: NotificationListener<ScrollUpdateNotification>(
        onNotification: (notification) {
          setState(() {
            if (notification.metrics.pixels >= 40) {
              appBarIsShowed = true;
            } else {
              appBarIsShowed = false;
            }
          });
          return true;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                const Header(),
                const SizedBox(height: 16),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: Text(
                    'Get started on Tonal with your first workout.',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 16),
                const SizedBox(height: 24),
                const MediaCard(),
                const SizedBox(height: 16),
                const BulletPoint(content: 'Get a feel for how Tonal works'),
                const BulletPoint(
                    content: 'Get your weights perfectly dialed in'),
                const BulletPoint(content: "Build confidence for what's next"),
                const SizedBox(height: 24),
                const Calender(),
                const SizedBox(height: 24),
                const StrenghCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
