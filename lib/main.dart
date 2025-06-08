import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'pages/home/page.dart';


void main() async {
  await initHiveForFlutter(); // Required for graphql_flutter caching
  runApp(CourtConnectApp());
}

class CourtConnectApp extends StatelessWidget {
  final HttpLink httpLink = HttpLink('http://localhost:8080/query');

  CourtConnectApp({super.key});

  @override
  Widget build(BuildContext context) {
    final client = ValueNotifier(
      GraphQLClient(
        link: httpLink,
        cache: GraphQLCache(store: HiveStore()),
      ),
    );

    return GraphQLProvider(
      client: client,
      child: MaterialApp(
        title: 'Court Connect',
        home: HomePage(),
        theme: ThemeData(
          textTheme: TextTheme(
            titleLarge: TextStyle(fontWeight: FontWeight.bold),
            titleMedium: TextStyle(fontWeight: FontWeight.bold),
            headlineLarge: TextStyle(fontWeight: FontWeight.bold),
            headlineMedium: TextStyle(fontWeight: FontWeight.bold),
            headlineSmall: TextStyle(fontWeight: FontWeight.bold),
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
            primary: Colors.black,
            secondary: Colors.amber,
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(),
            ),
          ),
        ),
      ),
    );
  }
}
