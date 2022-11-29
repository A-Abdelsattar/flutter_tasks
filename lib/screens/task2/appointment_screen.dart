import 'package:flutter/material.dart';
import 'package:flutter_tasks/components/reservations.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.medical_services,size: 40,),
        leadingWidth: 30,
        title: Text('Appointments'),
        actions: [
          Icon(Icons.list,size: 40,)
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 30),
          child: Column(
            children: [
              Text('Wednesday, 22 May 2019',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.grey[600]
              ),),
              SizedBox(height: 60,),
              Reservation(name: 'Ahmed',time: '10:30',),
              Reservation(name: 'mohamed',time: '11:40',),
              Reservation(name: 'Khaled',time: '12:40',),
              Reservation(name: 'hamada',time: '01:40',),
              Reservation(name: 'mostafa',time: '02:40',),
            ],
          ),
        ),
      ),
    );
  }
}
