# TitleRowWidget

A customizable and responsive row widget designed for Flutter applications. `TitleRowWidget` adjusts its layout based on the number of child widgets provided, ensuring optimal spacing and alignment.

**NOTE:** *This is companion widget for ```UIAnimatedRadioGroup``` to provide titles above the radio buttons.*

## Features

- **Flexible Layout**: Automatically adapts to the number of children, providing different alignments based on the count.
- **Responsive Design**: Uses the `Row` widget for horizontal layout management to ensure it works smoothly across different screen sizes.
- **Custom Alignment**: First and last child widgets are aligned to the left and right respectively, with center alignment for any middle widgets.

## Usage

To use `TitleRowWidget`, you need to import it into your Flutter project and initialize it with a list of children widgets.

### Installation

```yaml
dependencies:
  flutter:
    sdk: flutter
  ui_animated_radio_group:
    path: https://github.com/GitHubStuff/ui_animated_radio_group.git
```

### Example

Here is a simple usage example:

```dart
import 'package:flutter/material.dart';
import 'package:ui_animated_radio_group/ui_animated_radio_group.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TitleRowWidget Demo'),
        ),
        body: TitleRowWidget(
          children: <Widget>[
            Text('First Item'),
            Icon(Icons.star),
            Text('Last Item'),
          ],
        ),
      ),
    );
  }
}
```

This will create a row with a Text widget on the left, an Icon in the center, and another Text widget on the right, each taking up equal space when more than one child is present.

## Contributing

Contributions to enhance TitleRowWidget are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

## License

Specify your license or state that the widget is available under the MIT License, allowing others to freely use, modify, and distribute it.

## Finally

Be kind to each other!
