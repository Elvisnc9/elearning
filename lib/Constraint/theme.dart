import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = ThemeData(
    tabBarTheme: const TabBarTheme(
        labelColor: Colors.white, unselectedLabelColor: Colors.white),
    dividerColor: Colors.grey[800],
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.black.withOpacity(0.8),
    drawerTheme: const DrawerThemeData(),
    canvasColor: Colors.white,
    textTheme: TextTheme(
        titleMedium: GoogleFonts.poppins(
            fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),
        titleLarge: GoogleFonts.cambay(
            textStyle: const TextStyle(
               color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        titleSmall: GoogleFonts.poppins(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.poppins(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.roboto(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black)),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    primarySwatch: Colors.blueGrey,
    brightness: Brightness.dark,
    secondaryHeaderColor: Colors.grey[800],
    dialogBackgroundColor: Colors.grey[900]);
