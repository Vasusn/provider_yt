import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_yt/Provider/count_provider.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print("built");
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Example"),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context , value, child){
          return Text(
          value.count.toString(),
          style: const TextStyle(fontSize: 50),
        );
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
