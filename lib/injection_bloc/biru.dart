import 'package:flutter/material.dart';
import 'package:learn_bloc/bloc/counter.dart';
import 'package:learn_bloc/injection_bloc/center.dart';

class Biru extends StatelessWidget {
  const Biru({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      color: Colors.blue,
      child: CenterWidgetdata(),
    );
  }
}
