// Flutter code sample for FontFeature.scientificInferiors
//
// The Piazzolla font supports the `sinf` feature. It causes
// digits to be smaller and subscripted.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_sinf.png)

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
      'C8H10N4O2',
      style: TextStyle(
        fontFamily: 'Piazzolla',
        fontFeatures: <FontFeature>[
          FontFeature.scientificInferiors(),
        ],
      ),
    );
  }
}
