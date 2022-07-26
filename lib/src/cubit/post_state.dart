import 'package:equatable/equatable.dart';
import 'package:post_graphql/src/models/paginated_post.dart';

class PostState extends Equatable {
  final bool loading;
  final PaginatedPost? paginatedPost;

  const PostState({required this.loading, this.paginatedPost});

  factory PostState.initial() {
    return const PostState(
      loading: false,
      paginatedPost: null,
    );
  }

  PostState update({bool? loading, PaginatedPost? paginatedPost}) {
    return PostState(
      loading: loading ?? this.loading,
      paginatedPost: paginatedPost ?? this.paginatedPost,
    );
  }

  @override
  List<Object?> get props => [loading, paginatedPost];
}
