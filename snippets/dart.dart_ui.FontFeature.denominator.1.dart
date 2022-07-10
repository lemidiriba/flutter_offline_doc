// Flutter code sample for FontFeature.denominator
//
// The Piazzolla font supports the `dnom` feature. It causes
// the digits to be rendered smaller and near the bottom of the EM box.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_dnom.png)

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
    // The Piazzolla font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'Fractions: 1/2 2/3 3/4 4/5',
      style: TextStyle(
        fontFamily: 'Piazzolla',
        fontFeatures: <FontFeature>[
          FontFeature.denominator(),
        ],
      ),
    );
  }
}
