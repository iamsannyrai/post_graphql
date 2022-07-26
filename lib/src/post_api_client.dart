import 'package:flutter/material.dart';
import 'package:graphql/client.dart';

const posts = r'''
query PostWithPagination($limit: Int!,$page:Int!){
  posts(pagination:{limit: $limit page:$page}){
    count,
    currentPage,
    totalPages,
    data{
      id,
      title,
      body
    }
  }
}
''';

class PostApiClient {
  const PostApiClient({required GraphQLClient graphQLClient})
      : _graphQLClient = graphQLClient;

  factory PostApiClient.create() {
    final link = HttpLink('https://api.graphqlplaceholder.com/');

    return PostApiClient(
      graphQLClient: GraphQLClient(
        link: link,
        cache: GraphQLCache(),
      ),
    );
  }

  final GraphQLClient _graphQLClient;

  void getPosts() async {
    try {
      final queryOptions = QueryOptions(
          document: gql(posts), variables: const {"limit": 10, "page": 1});
      debugPrint("gql: ${gql(posts)}");
      final result = await _graphQLClient.query(queryOptions);
      debugPrint("result: ${result.data?["posts"]}");
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
