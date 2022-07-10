// Flutter code sample for FontFeature.proportionalFigures
//
// The Kufam font supports the `pnum` feature. It causes the digits
// to become proportionally-sized, rather than all being the same
// width. In this font this is especially noticeable with the digit
// "1": normally, the 1 has very noticeable serifs in this
// sans-serif font, but with the proportionally figures enabled,
// the digit becomes much narrower.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_pnum.png)

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
    // The Kufam font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'Call 311-555-2368 now!',
      style: TextStyle(
        fontFamily: 'Kufam',
        fontFeatures: <FontFeature>[
          FontFeature.proportionalFigures(),
        ],
      ),
    );
  }
}
