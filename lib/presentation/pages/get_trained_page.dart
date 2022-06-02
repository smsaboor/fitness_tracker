import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/cubit/bottom_nav_cubit.dart';

class GetTrained extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.green,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Get Trained',
          style: Theme.of(context).textTheme.headline3,
        ),
        ElevatedButton(
          onPressed: () {
            context.read<BottomNavCubit>().getHome();
          },
          child: Text(
            'GO TO HOME',
            style: TextStyle(fontSize: 20),
          ),
        )
      ]),
    );
  }
}
