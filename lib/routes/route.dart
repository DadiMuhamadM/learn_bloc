import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/provider%20value/provider_value.dart';

import '../404/404.dart';
import '../bloc/counter.dart';
import '../injection_bloc/injection.dart';

class MyRouter {
  final Counter myCounter = Counter();
  Route onGenerateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: InjectionHome(),
          ),
        );
      case '/provider-value':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: const ProviderValue(),
          ),
        );

      default:
        return MaterialPageRoute(builder: (context) => const NotFoundPage());
    }
  }
}
