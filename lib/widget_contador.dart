import 'package:flutter/material.dart';

class WidgetContador extends StatelessWidget {
  const WidgetContador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_counter',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
