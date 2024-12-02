import 'package:flutter/material.dart';
import 'package:learn_bloc/bloc/counter.dart';
import 'package:learn_bloc/injection_bloc/text.dart';

class CenterWidgetdata extends StatelessWidget {
  const CenterWidgetdata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextData(),
    );
  }
}
