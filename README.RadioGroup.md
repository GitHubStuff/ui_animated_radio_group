# UI Animated Radio Group

6-APR-2024

This Flutter package provides a customizable and animated radio button group widget, allowing users to select between multiple options with a smooth animation.

## Features

- Animated selection movement
- Customizable button diameter, colors, and stroke
- Configurable animation duration and curve
- Automatic layout adjustment based on the number of buttons

## Getting Started

To use the UI Animated Radio Group in your Flutter project, follow these simple steps:

### Installation

Add `ui_animated_radio_group` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  ui_animated_radio_group:
    path: https://github.com/GitHubStuff/ui_animated_radio_group.git
```

## Usage

Import the package where you want to use it:

```dart
import 'package:ui_animated_radio_group/ui_animated_radio_group.dart';
```

### Create a UIAnimatedRadioGroup widget and place it in your widget tree

Example:

```dart
UIAnimatedRadioGroup(
  buttonCount: 3,
  onSelected: (index) {
    // Zero(0) base
  },
  circleDiameter: 20.0,
  railColor: Colors.grey,
  railGap: 2.0,
  railStroke: 1.5,
  circleColor: Colors.black,
  ringColor: Colors.white,
  travelColor: Colors.green,
  animationDuration: Duration(milliseconds: 300),
)
```

## Customization

You can customize the UIAnimatedRadioGroup by setting its properties:

- *buttonCount* - Number of buttons in the group.
- *onSelected* - Callback function that triggers when a button is selected.
- *circleDiameter* - Diameter of the radio buttons.
- *railColor* - Color of the connecting rail between buttons.
- *railGap* - Gap between the rail and the buttons.
- *railStroke* - Stroke width of the rail.
- *circleColor* - Color of the button's circle.
- *ringColor* - Color of the outer ring of the selected button.
- *travelColor* - Color of the circle during its travel animation.
- *animationDuration* - Duration of the travel animation.
- *animationCurve* - Curve of the animation.

Example

An example application using UIAnimatedRadioGroup is included in the example/ folder. Run the example to see it in action.

## Contributing

Contributions to this package are welcome. Please read the CONTRIBUTING.md file for guidelines on how to contribute.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

markdown
Copy code

## Finally

Be kind to each other!
