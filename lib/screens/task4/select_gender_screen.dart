import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/gender_card.dart';
import 'package:flutter_tasks/enums/gender_enum.dart';
import 'package:flutter_tasks/screens/task4/select_height_screen.dart';
import 'package:flutter_tasks/utils/app_navigator.dart';

class SelectGenderScreen extends StatefulWidget {
  @override
  State<SelectGenderScreen> createState() => _SelectGenderScreenState();
}

class _SelectGenderScreenState extends State<SelectGenderScreen> {
  GenderEnum selectedGender=GenderEnum.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Select Your Gender',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            GenderCard(
              image:
                  'https://img.freepik.com/free-vector/man-shows-gesture-great-idea_10045-637.jpg',
              title: 'Male',
              function: () {

                setState(() {
                  selectedGender=GenderEnum.male;
                });
                AppNavigator.appNavigator(context, false, SelectHeightScreen(selectedGender));
              },
            ),
            GenderCard(
              image:
                  'https://img.freepik.com/free-vector/family-member-cartoon-character-colour-gradient-background_1308-45904.jpg',
              title: 'Female',
              function: () {
                setState(() {
                  selectedGender=GenderEnum.female;
                });
                AppNavigator.appNavigator(context, false, SelectHeightScreen(selectedGender));
              },
            )
          ],
        ),
      ),
    );
  }
}
