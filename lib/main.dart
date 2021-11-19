import 'dart:ui';
import 'package:cnpm/payment.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'package:provider/provider.dart';
import 'data.dart';
import 'payment.dart';

void main() {
  runApp(const MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectedItemProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Trà Sữa CNPM',
        scrollBehavior: MyCustomScrollBehavior(),
        darkTheme: ThemeData(brightness: Brightness.dark),
        themeMode: ThemeMode.light,
        theme: ThemeData(
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                primary: Colors.green[900],
              ),
            ),
            iconTheme: IconThemeData(color: Colors.green[900])),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return loginScreen(context);
  }
}

class Paymentpage extends StatelessWidget {
  const Paymentpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return paymentMethods(context);
  }
}
