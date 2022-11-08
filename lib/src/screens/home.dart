import 'package:flutter/material.dart';
import 'dart:ui';
import '../widgets/dateBar.dart';

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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bg.png"),
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,
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
                      DateBar(),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          width: window.physicalSize.width * 0.92,
                          child: Image.asset('assets/images/card.png')),
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
