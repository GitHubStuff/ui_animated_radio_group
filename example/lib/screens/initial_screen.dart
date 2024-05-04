import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui_animated_radio_group/ui_animated_radio_group.dart';
import 'package:ui_extensions_flutter/ui_extensions_flutter.dart';

import '../gen/assets.gen.dart';

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
          Container(
            width: 100,
            height: 100,
            color: Colors.grey[300],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.images.radio1024.image(),
            ),
          ),
          const Gap(15.0),
          const TitleRow(children: [
            Text('Dark'),
            Text('Light'),
            Text('System'),
          ]).withSymmetricPadding(horizontal: 16.0),
          const Gap(4.0),
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
            circleDiameter: 28.0,
            railColor: Colors.deepOrange,
            railGap: 3.0,
            railStroke: 4.0,
            ringColor: Colors.orange,
            startingIndex: 1,
            travelColor: Colors.green,
          ).withSymmetricPadding(horizontal: 16.0),
          const Gap(25.0),
          const Text('Animated Radio Button... doesn\'t do much'),
          const Gap(10.0),
          const UIAnimatedRadioButton(
            diameter: 50.0,
            ringColor: Colors.purple,
            circleColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
