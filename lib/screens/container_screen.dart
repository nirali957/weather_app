import 'package:flutter/material.dart';

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints.expand(
                  height: Theme.of(context).textTheme.labelSmall!.fontSize! * 1.1 + 200.0,
                ),
                transformAlignment: Alignment.center,
                padding: const EdgeInsets.all(8.0),
                color: Colors.blue[600],
                alignment: Alignment.center,
                transform: Matrix4.rotationZ(0.1),
                child: Text(
                  'Hello World',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
