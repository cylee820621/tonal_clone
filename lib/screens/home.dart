import 'package:flutter/material.dart';
import '../widgets/home/home_widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController? _controller;
  bool showAppbarTitle = false;

  _scrollListener() {
    if (_controller!.offset >= _controller!.position.maxScrollExtent &&
        !_controller!.position.outOfRange) {
      setState(() {
        showAppbarTitle = true;
      });
    }
    if (_controller!.offset <= _controller!.position.minScrollExtent &&
        !_controller!.position.outOfRange) {
      setState(() {
        showAppbarTitle = false;
      });
    }
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller?.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        title: showAppbarTitle ? Text('Tonal') : null,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          controller: _controller,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
