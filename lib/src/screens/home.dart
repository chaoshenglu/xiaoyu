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
                        padding: EdgeInsets.only(top: 56, bottom: 14),
                        child: Text(
                          '首页',
                          style: TextStyle(fontSize: 19.0, color: Colors.white),
                        ),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            width: window.physicalSize.width * 0.92,
                            height: 38,
                            color: Color(0xB4FFFFFF),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2022年11月8日',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color(0xFF0E6650)),
                                  ),
                                  Text(
                                    '星期二',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color(0xFF0E6650)),
                                  ),
                                ]),
                          ))
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
