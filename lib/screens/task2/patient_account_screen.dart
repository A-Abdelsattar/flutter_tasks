import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/circle_image.dart';
import 'package:flutter_tasks/components/my_button.dart';
import 'package:flutter_tasks/components/personal_details.dart';

class PatientAccountScreen extends StatelessWidget {
  const PatientAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Icon(Icons.medical_services,size: 40,),
        leadingWidth: 30,
        title: Text('Patient Account'),
        actions: [
          Icon(Icons.list,size: 40,)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleImage(image: 'https://img.freepik.com/free-vector/man-shows-gesture-great-idea_10045-637.jpg'),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Dumitru Simona',style:
                      TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]
                      ),),
                    SizedBox(height: 10,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: Center(
                        child: Text('MEDICAL HISTORY',style:
                        TextStyle(
                            fontSize: 15,
                            color: Colors.white
                        ),),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          PersonalDetails(text: '08:00 - 09:00', icon: Icons.timer_sharp),
          PersonalDetails(text: '2345678903456789', icon: Icons.phone_android),
          PersonalDetails(text: '48 lkamcalnkjdakjnaovabkl;d', icon: Icons.location_on),
          PersonalDetails(text: '08:00 - 09:00', icon: Icons.file_present),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(title: 'START PROCEDURES'),
              MyButton(title: 'EDIT')
            ],
          ),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyButton(title: 'BACK'),
              MyButton(title: 'PATIENT MISSING')
            ],
          ),
        ],
      ),
    );
  }
}
