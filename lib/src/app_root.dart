import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/task2/account_screen.dart';
import 'package:flutter_tasks/screens/task2/appointment_screen.dart';
import 'package:flutter_tasks/screens/task2/patient_account_screen.dart';
import 'package:flutter_tasks/screens/task3/market_screen.dart';
import 'package:flutter_tasks/screens/task4/select_gender_screen.dart';
import 'package:flutter_tasks/screens/task4/select_height_screen.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: //SelectHeightScreen(),
      SelectGenderScreen(),
      // MarketScreen()
    );
  }
}
