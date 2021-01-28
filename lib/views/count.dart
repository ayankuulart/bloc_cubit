import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_cubit/cubit/counter.dart';

class Count extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(builder: (context, count) {
      return Container(
        alignment: Alignment.center,
        child: Text(
          count.toString(),
          style: TextStyle(
            fontSize: 144,
            color: Colors.orange[400],
          ),
        ),
      );
    });
  }
}
