import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui_animated_radio_group/ui_animated_radio_group.dart';

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
          const Gap(4.0),
          Center(
            child: UIAnimatedRadioGroup(
              buttonCount: 3,
              onSelected: (index) {
                debugPrint('🔘 index: $index');
              },
              // your UIAnimatedRadioGroup properties
            ),
          ),
          //RadioButtonGroupTheme(
          //   data: RadioGroupThemeData.impairedThemeData,
          //   child: Center(
          //     child: UIAnimatedRadioGroup(
          //       buttonCount: 3,
          //       onSelected: (index) {
          //         debugPrint('🔘 index: $index');
          //       },
          //       // your UIAnimatedRadioGroup properties
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
