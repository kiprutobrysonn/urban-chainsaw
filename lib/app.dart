// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'package:shrine/supplemental/colors.dart';

// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatelessWidget {
  const ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shrine',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        // TODO: Change to a Backdrop with a HomePage frontLayer (104)
        '/': (BuildContext context) => const HomePage(),
        // TODO: Make currentCategory field take _currentCategory (104)
        // TODO: Pass _currentCategory for frontLayer (104)
        // TODO: Change backLayer field value to CategoryMenuPage (104)
      },
      // TODO: Customize the theme (103)
      theme: shrineTheme,
    );
  }
}

final ThemeData shrineTheme = _buildTheme();
ThemeData _buildTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
      colorScheme: base.colorScheme.copyWith(
    primary: kShrinePink100,
    onPrimary: kShrineBrown900,
    secondary: kShrineBrown900,
    error: kShrineError,
  ));
}

TextTheme buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall:
            base.headlineSmall!.copyWith(fontWeight: FontWeight.w500),
        titleLarge: base.titleLarge!.copyWith(fontSize: 18),
        bodySmall: base.bodySmall!.copyWith(fontWeight: FontWeight.w400),
        bodyLarge:
            base.bodyLarge!.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
      )
      .apply(
          fontFamily: 'Rubik',
          displayColor: kShrineBrown900,
          bodyColor: kShrineBrown900);
}