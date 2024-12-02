import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter.dart';

class TextData extends StatelessWidget {
  const TextData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Menggunakan BlocProvider
    Counter myCounter = context.read<Counter>();
    return BlocBuilder<Counter, int>(
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
    );
  }
}
