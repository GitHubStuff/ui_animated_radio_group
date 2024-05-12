import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final List<Widget> children;

  const TitleRow({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) return const SizedBox.shrink();

    if (children.length == 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [Expanded(child: children.first)],
      );
    }
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween, // This ensures even spacing.
      children: children.map((widget) {
        if (widget == children.first) {
          return Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: widget,
            ),
          );
        } else if (widget == children.last) {
          return Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: widget,
            ),
          );
        }
        return Expanded(
          child: Align(
            alignment: Alignment.center,
            child: widget,
          ),
        );
      }).toList(),
    );
  }
}
