import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/circle_image.dart';
import 'package:flutter_tasks/components/my_button.dart';
import 'package:flutter_tasks/components/personal_details.dart';


class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.medical_services,size: 40,),
        leadingWidth: 30,
        title: Text('My Account'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleImage(image: 'https://img.freepik.com/free-vector/man-shows-gesture-great-idea_10045-637.jpg'),
              Text('Maria loana Leonte', style:
                TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]
                ),),
              Text('HCP Name', style:
                TextStyle(
                  color: Colors.grey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),),
              SizedBox(height: 70,),
              PersonalDetails(text: '1278912345678', icon: Icons.phone_android),
              PersonalDetails(text: 'maria.loana.leo@gmail.com', icon: Icons.email),
              PersonalDetails(text: '5 msadk street,sdghjklsds', icon: Icons.time_to_leave),
              SizedBox(height: 100,),
              MyButton(title: 'Back'),
            ],
          ),
        ),
      ),
    );
  }
}
