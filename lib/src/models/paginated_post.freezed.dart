// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paginated_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginatedPost _$PaginatedPostFromJson(Map<String, dynamic> json) {
  return _PaginatedPost.fromJson(json);
}

/// @nodoc
mixin _$PaginatedPost {
  int get count => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  List<Post> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginatedPostCopyWith<PaginatedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginatedPostCopyWith<$Res> {
  factory $PaginatedPostCopyWith(
          PaginatedPost value, $Res Function(PaginatedPost) then) =
      _$PaginatedPostCopyWithImpl<$Res>;
  $Res call({int count, int currentPage, int totalPages, List<Post> data});
}

/// @nodoc
class _$PaginatedPostCopyWithImpl<$Res>
    implements $PaginatedPostCopyWith<$Res> {
  _$PaginatedPostCopyWithImpl(this._value, this._then);

  final PaginatedPost _value;
  // ignore: unused_field
  final $Res Function(PaginatedPost) _then;

  @override
  $Res call({
    Object? count = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
abstract class _$$_PaginatedPostCopyWith<$Res>
    implements $PaginatedPostCopyWith<$Res> {
  factory _$$_PaginatedPostCopyWith(
          _$_PaginatedPost value, $Res Function(_$_PaginatedPost) then) =
      __$$_PaginatedPostCopyWithImpl<$Res>;
  @override
  $Res call({int count, int currentPage, int totalPages, List<Post> data});
}

/// @nodoc
class __$$_PaginatedPostCopyWithImpl<$Res>
    extends _$PaginatedPostCopyWithImpl<$Res>
    implements _$$_PaginatedPostCopyWith<$Res> {
  __$$_PaginatedPostCopyWithImpl(
      _$_PaginatedPost _value, $Res Function(_$_PaginatedPost) _then)
      : super(_value, (v) => _then(v as _$_PaginatedPost));

  @override
  _$_PaginatedPost get _value => super._value as _$_PaginatedPost;

  @override
  $Res call({
    Object? count = freezed,
    Object? currentPage = freezed,
    Object? totalPages = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_PaginatedPost(
      count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginatedPost implements _PaginatedPost {
  const _$_PaginatedPost(
      this.count, this.currentPage, this.totalPages, final List<Post> data)
      : _data = data;

  factory _$_PaginatedPost.fromJson(Map<String, dynamic> json) =>
      _$$_PaginatedPostFromJson(json);

  @override
  final int count;
  @override
  final int currentPage;
  @override
  final int totalPages;
  final List<Post> _data;
  @override
  List<Post> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PaginatedPost(count: $count, currentPage: $currentPage, totalPages: $totalPages, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaginatedPost &&
            const DeepCollectionEquality().equals(other.count, count) &&
            const DeepCollectionEquality()
                .equals(other.currentPage, currentPage) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(count),
      const DeepCollectionEquality().hash(currentPage),
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_PaginatedPostCopyWith<_$_PaginatedPost> get copyWith =>
      __$$_PaginatedPostCopyWithImpl<_$_PaginatedPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginatedPostToJson(
      this,
    );
  }
}

abstract class _PaginatedPost implements PaginatedPost {
  const factory _PaginatedPost(final int count, final int currentPage,
      final int totalPages, final List<Post> data) = _$_PaginatedPost;

  factory _PaginatedPost.fromJson(Map<String, dynamic> json) =
      _$_PaginatedPost.fromJson;

  @override
  int get count;
  @override
  int get currentPage;
  @override
  int get totalPages;
  @override
  List<Post> get data;
  @override
  @JsonKey(ignore: true)
  _$$_PaginatedPostCopyWith<_$_PaginatedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call({String title, String body});
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  $Res call({String title, String body});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, (v) => _then(v as _$_Post));

  @override
  _$_Post get _value => super._value as _$_Post;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_Post(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post implements _Post {
  const _$_Post(this.title, this.body);

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

  @override
  final String title;
  @override
  final String body;

  @override
  String toString() {
    return 'Post(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body));

  @JsonKey(ignore: true)
  @override
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(final String title, final String body) = _$_Post;

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

  @override
  String get title;
  @override
  String get body;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}