import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String? title;
  final String? desc;

  const TaskCardWidget({this.title, this.desc});


  // const TaskCardWidget(this.title, this.desc) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      margin: const EdgeInsets.only(bottom: 18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title?? "(Unnammed)",
            style: const TextStyle(
              color: Color(0xff211551),
              fontSize: 24.0,
              fontWeight: FontWeight.bold,

            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            desc ?? "No description provided",
            textAlign: TextAlign.justify,
            style: const TextStyle(
              color: Color(0xff868290),
              fontSize: 16.0,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
