// Flutter code sample for FontFeature.notationalForms
//
// The Gothic A1 font supports several notational variant sets via
// the `nalt` feature.
//
// Set 1 changes the spacing of the glyphs. Set 2 parenthesizes the
// latin letters and reduces the numerals to subscripts. Set 3
// circles the glyphs. Set 4 parenthesizes the digits. Set 5 uses
// reverse-video circles for the digits. Set 7 superscripts the
// digits.
//
// The code below shows how to select set 3.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_nalt.png)

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
    // The Gothic A1 font can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      'abc 123',
      style: TextStyle(
        fontFamily: 'Gothic A1',
        fontFeatures: <FontFeature>[
          FontFeature.notationalForms(3), // circled letters and digits
        ],
      ),
    );
  }
}
