import 'package:freezed_annotation/freezed_annotation.dart';

part 'paginated_post.freezed.dart';
part 'paginated_post.g.dart';

@freezed
class PaginatedPost with _$PaginatedPost {
  const factory PaginatedPost(
    int count,
    int currentPage,
    int totalPages,
    List<Post> data,
  ) = _PaginatedPost;

  factory PaginatedPost.fromJson(Map<String, Object?> json) =>
      _$PaginatedPostFromJson(json);
}

@freezed
class Post with _$Post {
  const factory Post(String title, String body) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}
