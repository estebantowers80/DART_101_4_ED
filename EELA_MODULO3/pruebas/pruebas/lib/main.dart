// main.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pruebas/cubit/user_bloc.dart';
import 'package:pruebas/cubit/user_event.dart';
import 'package:pruebas/cubit/user_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => UserBloc(),
        child: UserScreen(),
      ),
    );
  }
}

class UserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userBloc = context.read<UserBloc>();

    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Bloc Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${state.name}'),
                    Text('Phone: ${state.phone}'),
                  ],
                );
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Enter Name'),
              onChanged: (value) {
                userBloc.add(UpdateName(value));
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Enter Phone'),
              onChanged: (value) {
                userBloc.add(UpdatePhone(value));
              },
            ),
          ],
        ),
      ),
    );
  }
}
