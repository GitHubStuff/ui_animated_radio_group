import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';
import 'package:ui_animated_radio_group/ui_animated_radio_group.dart';
import 'package:ui_extensions_flutter/ui_extensions_flutter.dart';

import '../gen/assets.gen.dart';

var _logger = Logger();

class InitialScreen extends StatelessWidget {
  final String title;
  static const String route = '/InitialScreen';

  const InitialScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: homeWidget(context),
      floatingActionButton: null,
    );
  }

  Widget homeWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.images.radio1024.image(),
            ),
          ),
          const Gap(5.0),
          const TitleRow(children: [
            Text('Left'),
            Text('Center'),
            Text('Right'),
          ]).withSymmetricPadding(horizontal: 16.0),
          const Gap(5.0),
          UIAnimatedRadioGroup(
            buttonCount: 3,
            onSelected: (index) {
              final snackBar = SnackBar(
                content: Text('Selected index: $index'),
                duration: const Duration(milliseconds: 500),
                behavior: SnackBarBehavior.floating,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: const Duration(milliseconds: 1500),
            circleColor: Colors.blue[900]!,
            circleDiameter: 40.0,
            railColor: Colors.deepOrange,
            railGap: 3.0,
            railStroke: 4.0,
            ringColor: Colors.orange,
            startingIndex: 1,
            travelColor: Colors.green,
          ).withSymmetricPadding(horizontal: 16.0),
          const Gap(20.0),
          const Text('Animated Radio Button... doesn\'t do much'),
          const Gap(8.0),
          const UIDualColorRadioImage(
            diameter: 34.0,
            ringColor: Colors.blue,
            circleColor: Colors.orange,
          ),
        ],
      ),
    );
  }

  Widget homeWidget2(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.images.radio1024.image(),
            ),
          ),
          const Gap(14.0),
          const TitleRow(children: [
            Text('Left'),
            Text('Center'),
            Text('Right'),
          ]),
          const Gap(14.0),
          Center(
            child: UIAnimatedRadioGroup(
              buttonCount: 3,
              onSelected: (index) {
                _logger.i('🔘 index: $index');
              },
              // your UIAnimatedRadioGroup properties
            ),
          ),
          const Gap(14.0),
          const UIDualColorRadioImage(
            diameter: 38.0,
            ringColor: Colors.blue,
            circleColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
