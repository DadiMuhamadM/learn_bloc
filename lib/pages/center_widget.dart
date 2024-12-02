import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Class yang sama dengan class + / -
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Center(
      child: BlocBuilder<Counter, int>(
        bloc: myCounter,
        builder: (context, state) {
          return Text(
            '$state',
            style: const TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
