import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/button_bmi.dart';
import 'package:flutter_tasks/components/my_button.dart';
import 'package:flutter_tasks/enums/gender_enum.dart';
import 'package:flutter_tasks/utils/app_navigator.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SelectHeightScreen extends StatefulWidget {
  @override
  GenderEnum gender;

  SelectHeightScreen(this.gender);

  State<SelectHeightScreen> createState() => _SelectHeightScreenState();
}

class _SelectHeightScreenState extends State<SelectHeightScreen> {
  double _value = 40.0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Select Your Height',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.grey),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height / 1.5,
                width: width / 1.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: widget.gender == GenderEnum.male
                      ? NetworkImage(
                          'https://img.freepik.com/free-photo/fun-cartoon-kid-with-rain-gear_183364-81176.jpg')
                      : NetworkImage(
                          'https://img.freepik.com/free-vector/young-teen-girl-portrait-happy-teenager-casual-clothes_90220-219.jpg'),
                  fit: BoxFit.fitHeight,
                )),
              ),
              Container(
                height: height / 1.5,
                child: SfSlider.vertical(
                  min: 0.0,
                  max: 100.0,
                  value: _value,
                  interval: 10,
                  stepSize: 1,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonBmi(
                title: 'Back',
                color: Colors.white,
                cText: true,
                function: () {
                  Navigator.pop(context);
                },
              ),
              ButtonBmi(
                title: 'Next',
                color: Colors.blue,
                cText: false,
                function: () {
                  // AppNavigator.appNavigator(context, false, screen)
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
