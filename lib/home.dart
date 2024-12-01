import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/counter.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Builder'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<Counter, int>(
              bloc: counter,
              builder: (context, state) {
                return Text(
                  '$state',
                  style: const TextStyle(fontSize: 50),
                );
              },
              listener: (context, state) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(seconds: 1),
                    content: Text('Testing'),
                  ),
                );
              },
              listenWhen: (previous, current) => current % 2 == 0,
              buildWhen: (previous, current) => current % 2 == 0,
            ),
            // BlocListener<Counter, int>(
            //   bloc: counter,
            //   listener: (context, state) {
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       const SnackBar(
            //         content: Text('Testing'),
            //       ),
            //     );
            //   },
            //   listenWhen: (previous, current) {
            //     if (current % 2 == 0) {
            //       return true;
            //     } else {
            //       return false;
            //     }
            //   },
            //   child: BlocBuilder<Counter, int>(
            //     bloc: counter,
            //     builder: (context, state) {
            //       return Text(
            //         '$state',
            //         style: const TextStyle(fontSize: 50),
            //       );
            //     },
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    counter.increment();
                  },
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    counter.decrement();
                  },
                  icon: const Icon(Icons.remove),
                ),
              ],
            )
          ],
        ));
  }
}
