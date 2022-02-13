import 'package:flutter/material.dart';
import 'package:untitled/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xfff6f6f6),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TaskCardWidget(
                    title: 'Get Started',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in tempus eros. Integer aliquam suscipit diam, vel egestas lorem interdum et',
                  ),
                  TaskCardWidget(),
                ],
              ),
              Positioned(
                right: 0.0,
                bottom: 0.0,
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Image(image: AssetImage("assets/images/add_icon.png")),
                )
              )
            ],
          ),
        ),
      ),
      //   floatingActionButton: FloatingActionButton(
      //       onPressed: () {
      //   // Add your onPressed code here!
      // },
      //   backgroundColor: Colors.green,
      //   child: const Icon(Icons.add),
      // ),),
    ));
  }
}
