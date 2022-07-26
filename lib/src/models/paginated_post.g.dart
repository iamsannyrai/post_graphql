// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paginated_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaginatedPost _$$_PaginatedPostFromJson(Map<String, dynamic> json) =>
    _$_PaginatedPost(
      json['count'] as int,
      json['currentPage'] as int,
      json['totalPages'] as int,
      (json['data'] as List<dynamic>)
          .map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaginatedPostToJson(_$_PaginatedPost instance) =>
    <String, dynamic>{
      'count': instance.count,
      'currentPage': instance.currentPage,
      'totalPages': instance.totalPages,
      'data': instance.data,
    };

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      json['title'] as String,
      json['body'] as String,
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
    };
