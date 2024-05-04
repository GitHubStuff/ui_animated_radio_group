# UIAnimatedRadioGroup & UIAnimatedRadioButton

- **LAST UPDATED 4-MAY-2024**

A complete, self-contained, **Flutter Demo App** that is the development view of an **App** for iOS, MacOS, Android, Windows, and Chrome review and updates.

## Getting Started

### Change out: *.vscode/launch.json*

The first time VSCode is made to run the ```/example``` app it creates a file: ```launch.json```

This config file controls which variation of the app to run.

Replace the content of this file with:

```json
{
    "version": "0.2.0",
    "configurations": [
        {
            "name": "dark mode",
            "request": "launch",
            "type": "dart",
            "program": "example/lib/main_dark.dart",
        },
        {
            "name": "light mode",
            "request": "launch",
            "type": "dart",
            "program": "example/lib/main_light.dart",
        },
        {
            "name": "device mode",
            "request": "launch",
            "type": "dart",
            "program": "example/lib/main_system.dart",
        }
    ]
}
```

This allows the demo app to run in Dark, Light, or System mode. ***This simple theme management is the least complicated way to test modes with little/no overhead from other packages***

### These are the steps when using VSCode

- The image `/assets/images/radio1024.png` is a placeholder image to generate application icons. In the `pubspec.yaml` file is section marked *flutter_icons*:

  ```dart
  flutter_icons:
  android: 'launcher_icon'
  ios: true
  remove_alpha_ios: true
  image_path: 'assets/images/radio1024.png'
  macos:
    generate: true
    image_path: 'assets/images/radio1024.png'
  web:
    generate: true
    image_path: 'assets/images/radio1024.png'
  windows:
    generate: true
    image_path: 'assets/images/radio1024.png'

  ```

  This generates icons for the platforms by running from the *Terminal* in VSCode:

  ```dart
  % dart run flutter_launcher_icons
  ```

  generating icons for iOS/Mac/Android/Web and even Windows *(Widows sucks but I guess someone has to do it.)*

  NOTE: The sample app already has the [radio1024](assets/images/radio1024.png). The best images are 1024x1024. Replace the image and make sure the `image_path` in `pubspec.yaml` is updated and re-run:

  `% dart run flutter_launcher_icons` again.

- From the Terminal in the IDE:

  ```dart
  % cd example
  % flutter clean
  % flutter pub get
  % dart run build_runner build -d
  % cd ..
  ```

The `build_runner` will generate `lib/gen/assets.gen.dart`, this is part of [flutter_gen_runner](https://pub.dev/packages/flutter_gen_runner), the flutter code generator for assets/fonts/colors to get rid of String-based APIs. Search `flutter_gen_runner` for an example of it's use.

All done, this is ideal first-commit for the new app.

## Finally

Be kind to each other!
