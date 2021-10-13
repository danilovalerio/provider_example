import 'package:flutter/material.dart';

class WidgetContador extends StatelessWidget {

  final int counter;

  const WidgetContador({Key? key, required this.counter,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$counter',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
