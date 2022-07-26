import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_graphql/src/cubit/post_cubit.dart';
import 'package:post_graphql/src/cubit/post_state.dart';
import 'package:post_graphql/src/post_api_client.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PostApiClient postApiClient;

  @override
  void initState() {
    super.initState();
    postApiClient = PostApiClient.create();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocProvider<PostCubit>(
        create: (context) =>
            PostCubit(postApiClient: postApiClient)..getPosts(),
        child: BlocBuilder<PostCubit, PostState>(
          builder: (context, state) => Container(
            child: state.loading
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: state.paginatedPost!.data.length,
                    itemBuilder: (context, index) => ListTile(
                      title: Text(
                        state.paginatedPost!.data[index].title,
                      ),
                      subtitle: Text(state.paginatedPost!.data[index].body),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
