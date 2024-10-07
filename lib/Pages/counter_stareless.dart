import 'package:flutter/material.dart';

class CounterStareless extends StatelessWidget {
   CounterStareless({super.key});

  final ValueNotifier<int> _count = ValueNotifier<int>(0);
  final ValueNotifier<bool> toggle = ValueNotifier<bool>(true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Starless"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ValueListenableBuilder(
            valueListenable: toggle,
            builder: (context, value, child) {
              return TextField(
                obscureText: toggle.value,
                decoration: InputDecoration(
                  hintText: "Password",
                  suffixIcon: IconButton(
                    icon: toggle.value
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    onPressed: () {
                      toggle.value = !toggle.value;
                    },
                  ),
                ),
              );
            },
          ),
          Center(
            child: ValueListenableBuilder(
              valueListenable: _count,
              builder: (context, value, child) {
                return Text(
                  value.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _count.value++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}