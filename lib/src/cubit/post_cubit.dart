import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:post_graphql/src/post_api_client.dart';

import 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit({required this.postApiClient}) : super(PostState.initial());

  final PostApiClient postApiClient;

  Future<void> getPosts() async {
    try {
      emit(state.update(loading: true));
      final paginatedPost = await postApiClient.getPosts();
      emit(state.update(paginatedPost: paginatedPost));
    } catch (e) {
      // e
    } finally {
      emit(state.update(loading: false));
    }
  }
}
