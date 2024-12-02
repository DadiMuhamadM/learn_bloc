import 'package:flutter/material.dart';
import 'package:learn_bloc/bloc/counter.dart';
import 'package:learn_bloc/injection_bloc/kuning.dart';

class Merah extends StatelessWidget {
  const Merah({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.red,
      child: Kuning(),
    );
  }
}
