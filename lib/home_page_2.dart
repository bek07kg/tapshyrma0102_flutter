import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma0102_flutter/home_page.dart';

class HomePageTwo extends StatelessWidget {
  HomePageTwo({Key? key, required this.count2}) : super(key: key);

  int count2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Тапшырма 02",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: InkWell(
          onTap: (() {
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          }),
          child: Container(
            height: 50.0,
            width: 350,
            decoration: const BoxDecoration(
              color: Color(0xffBDBDBD),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: Text(
                "сан : $count2",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
