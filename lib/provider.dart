import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter.dart';
import 'package:learn_bloc/pages/data_widget.dart';

// ignore: must_be_immutable
class ProviderHome extends StatelessWidget {
  ProviderHome({super.key});

  // Inisialisasi counter
  // Counter myCounter = Counter();

  @override
  Widget build(BuildContext context) {
    // Menggunakan BlocProvider
    Counter myCounter = BlocProvider.of<Counter>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Button -
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  myCounter.decrement();
                },
                child: const SizedBox(
                  height: 100,
                  width: 70,
                  child: Center(
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Widget data counter
            const DataWidget(),
            // Button +
            Material(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {
                  myCounter.increment();
                },
                child: const SizedBox(
                  height: 100,
                  width: 70,
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
