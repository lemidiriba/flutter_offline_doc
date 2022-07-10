// Flutter code sample for FontFeature.liningFigures
//
// The Sorts Mill Goudy font supports the `lnum` feature. It causes
// digits to fit more seamlessly with capital letters.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_lnum.png)

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
    // The Sorts Mill Goudy font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'CALL 311-555-2368 NOW!',
      style: TextStyle(
        fontFamily: 'Sorts Mill Goudy',
        fontFeatures: <FontFeature>[
          FontFeature.liningFigures(),
        ],
      ),
    );
  }
}
