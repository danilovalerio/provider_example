
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:provider_example/counter.dart';

class WidgetContador extends StatelessWidget {

  const WidgetContador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      ///watch observa se tem alguma mudança no Counter e rebuilda o widget
      '${context.watch<Counter>().count}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
