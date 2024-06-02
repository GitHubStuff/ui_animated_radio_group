import 'package:flutter/material.dart';
import 'package:ui_animated_radio_group/source/ui_dual_color_radio_image.dart';

import 'radio_button_group/radio_buttom_group_theme.dart';
import 'radio_button_group/radio_group_theme_data.dart';

part 'radio_button_group/_rail_painter.dart';

class UIAnimatedRadioGroup extends StatefulWidget {
  // Define default values for properties
  static const double minDiameter = 22.0;
  static const Duration defaultAnimationDuration = Duration(milliseconds: 1200);
  static const Color defaultCircleColor = Colors.orange;
  static const Color defaultTravelColor = Colors.green;
  static const double defaultRailGap = 1.0;
  static const double defaultRailStroke = 1.5;
  static const Curve defaultCurve = Curves.decelerate;
  static const double animatedAlignStart = -1.0; // AnimatedAlign start

  final Color? circleColor; // Make color properties nullable
  final Color? railColor;
  final Color? ringColor;
  final Color? travelColor;
  final Curve animationCurve;
  final double circleDiameter;
  final double railGap;
  final double railStroke;
  final Duration animationDuration;
  final Function(int) onSelected;
  final int buttonCount;
  final int startingIndex;

  const UIAnimatedRadioGroup({
    super.key,
    required this.buttonCount,
    required this.onSelected,
    this.animationCurve = defaultCurve,
    this.animationDuration = defaultAnimationDuration,
    this.circleColor, // Update color properties to be nullable
    this.circleDiameter = minDiameter,
    this.railColor,
    this.railGap = defaultRailGap,
    this.railStroke = defaultRailStroke,
    this.ringColor,
    this.startingIndex = 0,
    this.travelColor,
  })  : assert(circleDiameter >= minDiameter,
            'Diameter $circleDiameter must be at least $minDiameter.'),
        assert(animationDuration >= Duration.zero,
            'Animation duration must be positive.'),
        assert(startingIndex >= 0 && startingIndex < buttonCount,
            'Starting index must be between 0 and buttonCount - 1.'),
        assert(buttonCount > 1, 'Button count must be greater than 1.');

  @override
  State<UIAnimatedRadioGroup> createState() => _UIAnimatedRadioGroupState();
}

class _UIAnimatedRadioGroupState extends State<UIAnimatedRadioGroup> {
  late int selectedIndex;
  Color? selectionColor;
  late double distanceBetweenButtonsAsPct;
  late List<Widget> circles;
  RadioGroupThemeData? themeData;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.startingIndex;
    distanceBetweenButtonsAsPct = 2.0 / (widget.buttonCount - 1.0);
    circles = List.generate(widget.buttonCount, (index) => _buildCircle(index));
  }

  Widget _buildCircle(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          widget.onSelected(index);
          selectionColor = widget.travelColor ??
              themeData?.travelColor ??
              UIAnimatedRadioGroup.defaultTravelColor;
        });
      },
      child: UIDualColorRadioImage(
        diameter: widget.circleDiameter,
        ringColor: widget.ringColor ??
            themeData?.ringColor ??
            UIAnimatedRadioGroup.defaultCircleColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final xPos = -1.0 + selectedIndex * distanceBetweenButtonsAsPct;
    themeData ??= RadioButtonGroupTheme.of(context);
    selectionColor ??= widget.circleColor ??
        themeData?.circleColor ??
        UIAnimatedRadioGroup.defaultCircleColor;

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Positioned.fill(
          child: RepaintBoundary(
            child: CustomPaint(
              painter: _RailPainter(
                widget.buttonCount,
                iconDiameter: widget.circleDiameter,
                gap: widget.railGap,
                railColor: widget.railColor ??
                    themeData?.railColor ??
                    UIAnimatedRadioGroup.defaultCircleColor,
                stroke: widget.railStroke,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: circles,
        ),
        AnimatedAlign(
          alignment: Alignment(xPos, UIAnimatedRadioGroup.animatedAlignStart),
          onEnd: () => setState(() => selectionColor = (widget.circleColor ??
              themeData?.circleColor ??
              UIAnimatedRadioGroup.defaultCircleColor)),
          curve: widget.animationCurve,
          duration: widget.animationDuration,
          child: UIDualColorRadioImage(
            diameter: widget.circleDiameter,
            ringColor: Colors.transparent,
            circleColor: selectionColor!,
          ),
        ),
      ],
    );
  }
}
