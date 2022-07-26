import 'package:graphql/client.dart';
import 'package:post_graphql/src/models/paginated_post.dart';

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

  Future<PaginatedPost> getPosts() async {
    final queryOptions = QueryOptions(
        document: gql(posts), variables: const {"limit": 10, "page": 1});
    final result = await _graphQLClient.query(queryOptions);
    final paginatedPost =  PaginatedPost.fromJson(result.data?["posts"]);
    return paginatedPost;
  }
}
