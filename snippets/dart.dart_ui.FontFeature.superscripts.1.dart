// Flutter code sample for FontFeature.superscripts
//
// The Sorts Mill Goudy font supports the `sups` feature. It causes
// digits to be smaller, superscripted, and changes them to lining
// figures (so they are all the same height).
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_sups.png)

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
      'The isotope 238U decays to 206Pb',
      style: TextStyle(
        fontFamily: 'Sorts Mill Goudy',
        fontFeatures: <FontFeature>[
          FontFeature.superscripts(),
        ],
      ),
    );
  }
}
