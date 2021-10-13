import 'package:flutter/material.dart';
import 'package:provider_example/widget_contador.dart';

class WidgetCentral extends StatelessWidget {

  final int counter;

  const WidgetCentral( {Key? key, required this.counter,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        WidgetContador(counter: counter,),
      ],
    );
  }
}
