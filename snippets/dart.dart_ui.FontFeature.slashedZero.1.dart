// Flutter code sample for FontFeature.slashedZero
//
// The Source Code Pro font supports the `zero` feature. It causes the
// zero digit to be drawn with a slash rather than the default rendering,
// which in this case has a dot through the zero rather than a slash.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_zero.png)

import 'dart:ui';

import 'package:flutter/widgets.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Flutter Code Sample',
      builder: (BuildContext context, Widget? navigator) =>
          const MyStatelessWidget(),
      color: const Color(0xffffffff),
    );
  }
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // The Source Code Pro font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'One million is: 1,000,000.00',
      style: TextStyle(
        fontFamily: 'Source Code Pro',
        fontFeatures: <FontFeature>[
          FontFeature.slashedZero(),
        ],
      ),
    );
  }
}
