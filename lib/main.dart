import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/counter.dart';
import 'package:provider_example/widget_central.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///Usar o tipo notifier para notificar os observadores da alteracao do estado
    return ChangeNotifierProvider(
      ///Disponibiliza o counter para toda a aplicacao
      create: (_) => Counter(),
      child: MaterialApp(
        title: 'Flutter Provider Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Provider Demo'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: WidgetCentral(),
      ),
      //TODO adicionar o botão para decrescer um ao tocar
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().increment();
            },
            tooltip: 'Increment',
            child: const Icon(LineIcons.plusCircle),
          ),
          SizedBox(width: 12,),
          FloatingActionButton(
            onPressed: () {
              context.read<Counter>().decrement();
            },
            tooltip: 'Increment',
            child: const Icon(LineIcons.minusCircle),
          )
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
