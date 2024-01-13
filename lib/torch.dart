import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class Torch extends StatefulWidget {
  const Torch({super.key});

  @override
  State<Torch> createState() => _TorchState();
}

class _TorchState extends State<Torch> {
  final bgcolor = const Color(0xff2C3333);
  final textcolor = const Color(0xffE7F6F3);
  var controller = TorchController();
  var isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C3333),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Torch Light',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive ? 'assets/1.png' : 'assets/2.png',
                    width: 250,
                    height: 250,
                    color: isActive ? null : textcolor.withOpacity(0.2),
                  ),
                  SizedBox(
                    height: 0.2,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: IconButton(
                        onPressed: () {
                          controller.toggle();
                          isActive = !isActive;
                          setState(() {});
                        },
                        icon: const Icon(Icons.power_settings_new)),
                  )
                ],
              ),
            ),
          )),
          Text(
            "Devloped By Sagar",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
