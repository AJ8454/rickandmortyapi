import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmortyapi/src/app/features/global/snackbar_message.dart';
import 'package:rickandmortyapi/src/app/features/home/presentation/bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const route = "/HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeErrorState) {
            SnackBarMessage()
                .showErrorSnackBar(message: state.error, context: context);
          }
        },
        builder: (context, state) {
          if (state is HomeInitial || state is HomeLoadingState) {
            return const CircularProgressIndicator();
          } else if (state is HomeLoadedState) {
            return ListView.builder(
              itemCount: state.data.length,
              itemBuilder: (context, index) {
                final data = state.data[index];
                return ListTile(
                  title: Text(data.name),
                );
              },
            );
          } else if (state is HomeErrorState) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
