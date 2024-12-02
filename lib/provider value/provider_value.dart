import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter.dart';

class ProviderValue extends StatelessWidget {
  const ProviderValue({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = context.read<Counter>();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Provider Value'),
          centerTitle: true,
        ),
        body: Center(
          child: BlocBuilder<Counter, int>(
            bloc: myCounter,
            builder: (context, state) {
              return Text(
                '$state',
                style: const TextStyle(fontSize: 50),
              );
            },
          ),
        ));
  }
}
