import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webly_task/presentation/home/cubit/home_cubit.dart';
import 'package:webly_task/presentation/home/pages/home.dart';

class WeblyTask extends StatelessWidget {
  const WeblyTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeCubit()..fetchProducts()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Task',
        home: HomePage(),
      ),
    );
  }
}