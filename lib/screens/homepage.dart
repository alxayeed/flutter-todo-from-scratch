import 'package:flutter/material.dart';
import 'package:untitled/screens/taskpage.dart';
import 'package:untitled/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xfff6f6f6),
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: const Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: const [
                        TaskCardWidget(
                          title: 'Get Started now',
                          desc:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in tempus eros. Integer aliquam suscipit diam, vel egestas lorem interdum et',
                        ),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  right: 10.0,
                  bottom: 20.0,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const TaskPage()));
                    },
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Image(
                          image: AssetImage("assets/images/add_icon.png")),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
