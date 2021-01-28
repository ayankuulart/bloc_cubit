import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/cubit/counter.dart';

class Handlers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context, count) {
        return Container(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
                child: CupertinoButton(
                  onPressed: () {
                    // context.read<CounterCubit>().incrementWithWait();

                    for (int i = 0; i < 10; i++) {
                      context.read<CounterCubit>().incrementWithWait();
                    }
                  },
                  color: Colors.blue,
                  child: Text(
                    "+",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                child: CupertinoButton(
                  onPressed: () {
                    context.read<CounterCubit>().defaultDecrement();
                  },
                  color: Colors.blue,
                  child: Text(
                    "-",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
