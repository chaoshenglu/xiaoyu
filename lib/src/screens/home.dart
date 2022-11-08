import 'package:flutter/material.dart';
import 'dart:ui';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                  width: window.physicalSize.width,
                  height: window.physicalSize.width / 1.81,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40),
                        child: Text(
                          '首页',
                          style: TextStyle(fontSize: 21.0, color: Colors.white),
                        ),
                      ),
                      Container(
                        width: window.physicalSize.width * 0.9,
                        height: 44,
                        color: Colors.black,
                      )
                    ],
                  )),
            ],
          )),
        ),
      );
}

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) => Column(
        children: [
          ...[
            Text(
              '首页',
              style: Theme.of(context).textTheme.headlineMedium,
            )
          ]
        ],
      );
}
