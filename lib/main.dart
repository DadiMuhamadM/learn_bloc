import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:learn_bloc/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

// =========== Penggunaan Cubit ===========
// class CounterCubit extends Cubit<int> {
//   CounterCubit({this.initialData = 0}) : super(initialData);

//   int initialData;
//   // int? currentState;
//   // int? nextState;

//   void increment() {
//     emit(state + 1);
//   }

//   void decrement() {
//     emit(state - 1);
//   }

// // Fitur untuk memantau perubahan state
//   @override
//   void onChange(Change<int> change) {
//     super.onChange(change);
//     print(change);
//     // currentState = change.currentState;
//     // nextState = change.nextState;
//   }
// }

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   // CounterCubit counterCubit = CounterCubit();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text(
//           'Basic Cubit Flutter',
//           style: TextStyle(
//             fontSize: 20,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             StreamBuilder(
//               // initialData: counterCubit.initialData,
//               stream: counterCubit.stream,
//               builder: (context, snapshot) {
//                 return Column(
//                   children: [
//                     Text(
//                       '${snapshot.data}',
//                       style: const TextStyle(
//                         fontSize: 30,
//                       ),
//                     ),
//                     // const SizedBox(
//                     //   height: 20,
//                     // ),
//                     // Text(
//                     //   '${counterCubit.currentState} -> ${counterCubit.nextState}',
//                     //   style: const TextStyle(
//                     //     fontSize: 30,
//                     //   ),
//                     // ),
//                   ],
//                 );
//               },
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 IconButton(
//                   onPressed: () {
//                     counterCubit.increment();
//                   },
//                   icon: const Icon(Icons.add),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     counterCubit.decrement();
//                   },
//                   icon: const Icon(Icons.remove),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
