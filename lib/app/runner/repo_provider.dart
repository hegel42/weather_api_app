import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepoProvider extends StatelessWidget {
  const RepoProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        // RepositoryProvider(create: (context) => DioClient()),
        // RepositoryProvider(
        //   create: (context) => EverydayPictureRepo(
        //     dioClient: RepositoryProvider.of<DioClient>(context),
        //   ),
        // ),
      ],
      child: MultiBlocProvider(
        providers: [
          // BlocProvider(
          //   create: (context) => EverydayPictureBloc(
          //     RepositoryProvider.of<EverydayPictureRepo>(context),
          //   )..add(EverydayPictureFetch()),
          // ),
        ],
        child: child,
      ),
    );
  }
}
