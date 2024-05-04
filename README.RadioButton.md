# UI Animated Radio Button

This Flutter widget, `UIAnimatedRadioButton`, provides a customizable radio button that can be used independently or as part of a group in user interfaces to provide a visually appealing selection option. ***NOTE:*** *It is the button used by **UIAnimatedRadioGroup***.

## Features

- Fully customizable diameter, ring thickness, and colors.
- Adaptable ring padding based on diameter.
- Simple and clean UI integration for any Flutter app.

## Getting Started

### Installation

To use the `UIAnimatedRadioButton` in your Flutter project, ensure you have Flutter installed and your environment is set up. Then, add this widget's file to your project.

Add `ui_animated_radio_group` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  ui_animated_radio_group:
    path: https://github.com/GitHubStuff/ui_animated_radio_group.git
```

### Usage

Import the widget into your Dart file:

```dart
import 'path_to/ui_animated_radio_button.dart';
```

You can then integrate UIAnimatedRadioButton into your Flutter app by adding it to your widget tree:

```dart
UIAnimatedRadioButton(
  diameter: 40.0,
  ringColor: Colors.blue,
  circleColor: Colors.white,
)
```

### Customization

UIAnimatedRadioButton can be customized with the following properties:

- *diameter* - Sets the overall size of the radio button.
- *ringColor* - Specifies the color of the outer ring.
- *circleColor* - Determines the color of the inner circle.

The thickness of the ring adjusts based on the diameter of the button, maintaining visual balance.

#### Example

Check the example/ directory for a sample implementation of the UIAnimatedRadioButton. Here you will find a Flutter application demonstrating the use of the widget in a UI.

## Contributing

Feel free to contribute by submitting pull requests, creating issues, or suggesting enhancements to the UIAnimatedRadioButton.

## License

This project is licensed under the MIT License - see the LICENSE file for more details.

## Finally

Be kind to each other!
