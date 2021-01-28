import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/cubit/counter.dart';

import 'views/count.dart';
import 'views/handlers.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final int someNumber = 40;

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "Bloc/Cubit test",
      home: SafeArea(
        top: true,
        child: BlocProvider(
          create: (_) => CounterCubit(),
          child: CupertinoPageScaffold(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 200,
                    height: 480,
                    child: Count(),
                  ),
                  Container(
                    height: 150,
                    child: Handlers(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
