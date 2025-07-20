import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expense_tracker/widgets/expenses.dart';
var kColorScheme=ColorScheme.fromSeed(seedColor:const Color.fromARGB(255,96, 59, 181)); 
var kDarkColorScheme=ColorScheme.fromSeed(brightness: Brightness.dark,seedColor: Color.fromARGB(255, 5, 99, 125),);
void main() {
 // WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setPreferredOrientations([
    //DeviceOrientation.portraitUp
  //]).then((fn){
    runApp(MaterialApp(
    darkTheme: ThemeData.dark().copyWith(colorScheme: kDarkColorScheme,
    cardTheme: const CardThemeData().copyWith(
     color:kDarkColorScheme.secondaryContainer,
      margin:const EdgeInsets.symmetric(horizontal:16,vertical: 8),),
       elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
        ),
      ),),
    //theme: Themedata(useMaterial3:true),
    theme: ThemeData().copyWith(colorScheme: kColorScheme,
    appBarTheme: const AppBarTheme().copyWith(
      backgroundColor: kColorScheme.onPrimaryContainer,
      foregroundColor: kColorScheme.primaryContainer,
    ),
    cardTheme: const CardThemeData().copyWith(
     color:kColorScheme.secondaryContainer,
      margin:const EdgeInsets.symmetric(horizontal:16,vertical: 8),),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: kColorScheme.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
        titleLarge: TextStyle(fontWeight: FontWeight.bold,color: kColorScheme.onSecondaryContainer,fontSize: 16),
      )
    ),
    //themeMode: ThemeMode.system,//default
    home:const Expenses(),
  ),);
}

