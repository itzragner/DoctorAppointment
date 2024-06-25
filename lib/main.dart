
import 'package:flutter/material.dart';
import 'package:untitled/screens/auth_page.dart';
import 'package:untitled/main_layout.dart';
import 'package:untitled/utils/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Config.primaryColor,
            border: Config.outlinedBorder,
            focusedBorder: Config.focusedBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outlinedBorder,
            floatingLabelStyle:TextStyle(color: Config.primaryColor,),
            prefixIconColor: Colors.black38 ,
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: false,
            unselectedItemColor: Colors .grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage() ,
        'main': (context) => const MainLayout(),
      },
    );
  }
}
