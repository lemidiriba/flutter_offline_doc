// Flutter code sample for FontFeature.tabularFigures
//
// The Piazzolla font supports the `tnum` feature. It causes the
// digits to become uniformally-sized, rather than having variable
// widths. In this font this is especially noticeable with the
// digit "1"; with tabular figures enabled, the "1" digit is more
// widely spaced.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_tnum.png)

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
      'Call 311-555-2368 now!',
      style: TextStyle(
        fontFamily: 'Piazzolla',
        fontFeatures: <FontFeature>[
          FontFeature.tabularFigures(),
        ],
      ),
    );
  }
}
