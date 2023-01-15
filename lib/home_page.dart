import 'dart:js_util';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tapshyrma0102_flutter/home_page_2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int count = 0;

  void remove() {
    setState(() {
      count--;
    });
  }

  void add() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Тапшырма 01",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePageTwo(
                              count2: count,
                            )));
              },
              child: Container(
                height: 50.0,
                width: 350.0,
                decoration: const BoxDecoration(
                  color: Color(0xffBDBDBD),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    "сан : $count",
                    style: const TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50.0,
                width: 75.0,
                decoration: const BoxDecoration(
                  color: Color(0xff005EA6),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: () {
                    remove();
                  },
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
              const SizedBox(width: 30.0),
              Container(
                height: 50.0,
                width: 75.0,
                decoration: const BoxDecoration(
                  color: Color(0xff005EA6),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: InkWell(
                  onTap: () {
                    add();
                  },
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40.0,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
