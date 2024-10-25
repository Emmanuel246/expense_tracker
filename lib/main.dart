import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var KColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(225, 96, 59, 181));
void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(
        colorScheme: KColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: KColorScheme.onPrimaryContainer,
          foregroundColor: KColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
            color: KColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: KColorScheme.primaryContainer,
          ),
        ),   
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: KColorScheme.onSecondaryContainer,
            fontSize: 18
          )
        )
         
            ),
    debugShowCheckedModeBanner: false,
    home: const Expenses(),
  ));
}
