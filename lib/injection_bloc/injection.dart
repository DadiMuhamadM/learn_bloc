import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter.dart';
import 'package:learn_bloc/injection_bloc/merah.dart';
import 'package:learn_bloc/provider%20value/provider_value.dart';

class InjectionHome extends StatelessWidget {
  InjectionHome({super.key});

  // inisialisasi counter

  @override
  Widget build(BuildContext context) {
    // Menggunakan BlocProvider
    Counter myCounter = context.read<Counter>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Injection Bloc'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) {
          //       return BlocProvider.value(
          //         value: myCounter,
          //         child: const ProviderValue(),
          //       );
          //       // return BlocProvider(
          //       //   create: (context) => myCounter,
          //       //   child: const ProviderValue(),
          //       // );
          //     },
          //   ),
          // );
          Navigator.of(context).pushNamed('/provider-value');
        },
        child: const Icon(Icons.arrow_forward_ios),
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
            const Merah(),

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
