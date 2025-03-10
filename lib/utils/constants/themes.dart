import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify.dart';

final themeData = ThemeData(
  fontFamily: 'LovelyMamma',
  scaffoldBackgroundColor: const Color(0xFF0F0F0F),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF1b4332),
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: Color(0xFFe1e1e1), fontSize: 25,
      fontWeight: FontWeight.w700, fontFamily: 'LovelyMamma',
    ),
  ),
  actionIconTheme: ActionIconThemeData(
    backButtonIconBuilder: (context) {
      return const Iconify(MaterialSymbols.arrow_back_rounded, color: Colors.white,);
    },
    closeButtonIconBuilder: (context) {
      return Container(
        width: 30, height: 30,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8)
        ),
        child: const Iconify(MaterialSymbols.close_rounded),
      );
    },
  ),
  dialogBackgroundColor: const Color(0xFF1A1A1A),
  dialogTheme: const DialogTheme(
    surfaceTintColor: Colors.transparent,
  ),
  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
    hintStyle: const TextStyle(color: Color(0xFFadb5bd), fontSize: 21),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF40916c), width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: Color(0xFF52b788), width: 2),
    ),
    suffixIconColor: Colors.black
  ),
  primaryTextTheme: const TextTheme(
    displaySmall: TextStyle()
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      fixedSize: MaterialStatePropertyAll(Size(double.maxFinite, 20)),
      backgroundColor: MaterialStatePropertyAll(Color(0xFF2d6a4f)),
    )
  ),
  listTileTheme: ListTileThemeData(
    titleTextStyle: TextStyle(color: Colors.grey.shade200, fontSize: 18, fontFamily: 'LovelyMamma', fontWeight: FontWeight.w300),
    subtitleTextStyle: const TextStyle(color: Colors.grey, fontSize: 14, fontFamily: 'LovelyMamma',),
  ),
);
