part of '../ui_animated_radio_group.dart';

class _RailPainter extends CustomPainter {
  final int choices;
  final double iconDiameter;
  final double gap;
  final Color railColor;
  final double stroke;

  List<Offset> startPoints = [];
  List<Offset> endPoints = [];

  _RailPainter(this.choices,
      {required this.iconDiameter,
      required this.gap,
      required this.railColor,
      required this.stroke});

  /// One time calculation of the start and end points of the rail
  void _calculatePoints(Size size) {
    if (startPoints.isNotEmpty) return;

    final totalSpacing = size.width - iconDiameter * choices;

    final segmentWidth = (totalSpacing / (choices - 1)) - (2.0 * gap);

    double startX = iconDiameter + gap;

    for (int i = 1; i < choices; i++) {
      double endX = startX + segmentWidth;
      startPoints.add(Offset(startX, 0));
      endPoints.add(Offset(endX, 0));
      startX = endX + iconDiameter + (gap * 2);
    }
  }

  @override
  void paint(Canvas canvas, Size size) {
    /// Cache the points
    _calculatePoints(size);
    final paint = Paint()
      ..color = railColor
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke;

    for (int i = 0; i < startPoints.length; i++) {
      canvas.drawLine(startPoints[i].translate(0, size.height / 2),
          endPoints[i].translate(0, size.height / 2), paint);
    }
  }

  @override
  bool shouldRepaint(_RailPainter oldDelegate) => false;
}
