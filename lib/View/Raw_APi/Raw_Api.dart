import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class RawAPi extends StatefulWidget {
  const RawAPi({super.key});

  @override
  State<RawAPi> createState() => _RawAPiState();
}

class _RawAPiState extends State<RawAPi> {
  @override
  Widget build(BuildContext context) {
    final HttpLink httpLink = HttpLink("https://countries.trevorblades.com/");
    final ValueNotifier<GraphQLClient> client = ValueNotifier<GraphQLClient>(
        GraphQLClient(link: httpLink as Link, cache: GraphQLCache()));
    return GraphQLProvider(
      client: client,
      child: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GrapQl"),
      ),
      body: Query(
        options: QueryOptions(document: gql(r"""
        query GetContinent($code : ID!) {
 continent(code : $code ){
  countries{
    name
  }
}
}
"""), variables: <String, dynamic>{"code": "AS"}),
        builder: (result, {fetchMore, refetch}) {
          if (result.data == null) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: result.data!['continent']['countries'].length,
            itemBuilder: (context, index) {
              return ListTile(
                title:
                    Text(result.data!['continent']['countries'][index]['name']),
              );
            },
          );
        },
      ),
    );
  }
}
