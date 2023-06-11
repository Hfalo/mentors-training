import 'package:flutter/material.dart';
import 'package:train/models/Students.dart';

class Details extends StatelessWidget {
  const Details({
    Key? key,
    required this.student,
  }) : super(key: key);

  final Student student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFDCECEB),
      appBar: AppBar(
        title: Text('Details',
        style: TextStyle(
          color: Color(0XFFF6F1F1),
          fontFamily: "Courier" ,
          fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: Color(0XFF11B6BB),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name: ${student.name}',
              style: TextStyle(
              fontSize: 18,
              fontFamily: "Courier" ,
               //fontWeight: FontWeight.bold,
               color: Color(0XFF0D888B),),
            ),
            SizedBox(height: 20),
            Text(
              'Email: ${student.email}',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Courier" ,
                color: Color(0XFF0D888B)),
            ),
            SizedBox(height: 20),
            Text(
              'Favorite Snack: ${student.favsnack}',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Courier" ,
                color: Color(0XFF0D888B),),
            ),
            SizedBox(height: 20),
            Text(
              'Grade: ${student.grade}',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Courier" ,
                color: Color(0XFF0D888B),),
            ),
            SizedBox(height: 20),
            Text(
              'Impression: ${student.impression}',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Courier" ,
                color: Color(0XFF0D888B)),
            ),
          ],
        ),
      ),
    );
  }
}
