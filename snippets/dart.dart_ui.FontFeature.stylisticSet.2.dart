// Flutter code sample for FontFeature.stylisticSet
//
// The Piazzolla font supports the `ssXX` feature for more
// elaborate stylistic effects. Set 1 turns some Latin characters
// into Roman numerals, set 2 enables some ASCII characters to be
// used to create pretty arrows, and so forth.
//
// _These_ stylistic sets do _not_ correspond to character variants.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_ssXX_2.png)

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
    return Text(
      '-> MCMXCVII <-', // 1997
      style: TextStyle(
        fontFamily: 'Piazzolla',
        fontFeatures: <FontFeature>[
          FontFeature.stylisticSet(1),
          FontFeature.stylisticSet(2),
        ],
      ),
    );
  }
}
