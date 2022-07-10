// Flutter code sample for FontFeature.localeAware
//
// The Noto Sans CJK font supports the `locl` feature for CJK characters.
// In this example, the `localeAware` feature is not explicitly used, as it is
// enabled by default. This example instead shows how to set the locale,
// thus demonstrating how Noto Sans adapts the glyph shapes to the locale.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/font_feature_locl.png)

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
    // The Noto family of fonts can be downloaded from Google Fonts (https://www.google.com/fonts).
    return const Text(
      '次 化 刃 直 入 令',
      locale: Locale(
          'zh', 'CN'), // or Locale('ja'), Locale('ko'), Locale('zh', 'TW'), etc
      style: TextStyle(
        fontFamily: 'Noto Sans',
      ),
    );
  }
}
