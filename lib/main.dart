import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

final kColorTheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 96, 51, 181),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorTheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorTheme.onPrimaryContainer,
          foregroundColor: kColorTheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: kColorTheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorTheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.normal,
            color: kColorTheme.onSecondaryContainer,
            fontSize: 14,
          ),
        ),
      ),
      home: const Expenses(),
    ),
  );
}
