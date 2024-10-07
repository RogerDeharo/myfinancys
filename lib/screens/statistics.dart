import 'package:flutter/material.dart';

class Statictics extends StatefulWidget {
  const Statictics({Key? key}) : super(key: key);

  @override
  State<Statictics> createState() => _StaticticsState();
}

class _StaticticsState extends State<Statictics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [SliverToBoxAdapter(
          child: Column(children: [
            SizedBox(height: 20,)
          ]),
        )],
      )),
    );
  }
}
