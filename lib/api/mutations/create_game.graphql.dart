import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$createGame {
  factory Variables$Mutation$createGame({required Input$NewGame input}) =>
      Variables$Mutation$createGame._({
        r'input': input,
      });

  Variables$Mutation$createGame._(this._$data);

  factory Variables$Mutation$createGame.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$NewGame.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$createGame._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$NewGame get input => (_$data['input'] as Input$NewGame);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$createGame<Variables$Mutation$createGame>
      get copyWith => CopyWith$Variables$Mutation$createGame(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$createGame ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$createGame<TRes> {
  factory CopyWith$Variables$Mutation$createGame(
    Variables$Mutation$createGame instance,
    TRes Function(Variables$Mutation$createGame) then,
  ) = _CopyWithImpl$Variables$Mutation$createGame;

  factory CopyWith$Variables$Mutation$createGame.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$createGame;

  TRes call({Input$NewGame? input});
}

class _CopyWithImpl$Variables$Mutation$createGame<TRes>
    implements CopyWith$Variables$Mutation$createGame<TRes> {
  _CopyWithImpl$Variables$Mutation$createGame(
    this._instance,
    this._then,
  );

  final Variables$Mutation$createGame _instance;

  final TRes Function(Variables$Mutation$createGame) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$createGame._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$NewGame),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$createGame<TRes>
    implements CopyWith$Variables$Mutation$createGame<TRes> {
  _CopyWithStubImpl$Variables$Mutation$createGame(this._res);

  TRes _res;

  call({Input$NewGame? input}) => _res;
}

class Mutation$createGame {
  Mutation$createGame({
    required this.createGame,
    this.$__typename = 'Mutation',
  });

  factory Mutation$createGame.fromJson(Map<String, dynamic> json) {
    final l$createGame = json['createGame'];
    final l$$__typename = json['__typename'];
    return Mutation$createGame(
      createGame: Mutation$createGame$createGame.fromJson(
          (l$createGame as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$createGame$createGame createGame;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createGame = createGame;
    _resultData['createGame'] = l$createGame.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createGame = createGame;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createGame,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createGame || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createGame = createGame;
    final lOther$createGame = other.createGame;
    if (l$createGame != lOther$createGame) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createGame on Mutation$createGame {
  CopyWith$Mutation$createGame<Mutation$createGame> get copyWith =>
      CopyWith$Mutation$createGame(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$createGame<TRes> {
  factory CopyWith$Mutation$createGame(
    Mutation$createGame instance,
    TRes Function(Mutation$createGame) then,
  ) = _CopyWithImpl$Mutation$createGame;

  factory CopyWith$Mutation$createGame.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGame;

  TRes call({
    Mutation$createGame$createGame? createGame,
    String? $__typename,
  });
  CopyWith$Mutation$createGame$createGame<TRes> get createGame;
}

class _CopyWithImpl$Mutation$createGame<TRes>
    implements CopyWith$Mutation$createGame<TRes> {
  _CopyWithImpl$Mutation$createGame(
    this._instance,
    this._then,
  );

  final Mutation$createGame _instance;

  final TRes Function(Mutation$createGame) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createGame = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGame(
        createGame: createGame == _undefined || createGame == null
            ? _instance.createGame
            : (createGame as Mutation$createGame$createGame),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$createGame$createGame<TRes> get createGame {
    final local$createGame = _instance.createGame;
    return CopyWith$Mutation$createGame$createGame(
        local$createGame, (e) => call(createGame: e));
  }
}

class _CopyWithStubImpl$Mutation$createGame<TRes>
    implements CopyWith$Mutation$createGame<TRes> {
  _CopyWithStubImpl$Mutation$createGame(this._res);

  TRes _res;

  call({
    Mutation$createGame$createGame? createGame,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$createGame$createGame<TRes> get createGame =>
      CopyWith$Mutation$createGame$createGame.stub(_res);
}

const documentNodeMutationcreateGame = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'createGame'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'NewGame'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createGame'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'date'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'startTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'endTime'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'organizer'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'sport'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'gameFormat'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'teams'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'score'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'players'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'level'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'club'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'facility'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$createGame _parserFn$Mutation$createGame(Map<String, dynamic> data) =>
    Mutation$createGame.fromJson(data);
typedef OnMutationCompleted$Mutation$createGame = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$createGame?,
);

class Options$Mutation$createGame
    extends graphql.MutationOptions<Mutation$createGame> {
  Options$Mutation$createGame({
    String? operationName,
    required Variables$Mutation$createGame variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createGame? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$createGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$createGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateGame,
          parserFn: _parserFn$Mutation$createGame,
        );

  final OnMutationCompleted$Mutation$createGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$createGame
    extends graphql.WatchQueryOptions<Mutation$createGame> {
  WatchOptions$Mutation$createGame({
    String? operationName,
    required Variables$Mutation$createGame variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createGame? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationcreateGame,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$createGame,
        );
}

extension ClientExtension$Mutation$createGame on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$createGame>> mutate$createGame(
          Options$Mutation$createGame options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$createGame> watchMutation$createGame(
          WatchOptions$Mutation$createGame options) =>
      this.watchMutation(options);
}

class Mutation$createGame$HookResult {
  Mutation$createGame$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$createGame runMutation;

  final graphql.QueryResult<Mutation$createGame> result;
}

Mutation$createGame$HookResult useMutation$createGame(
    [WidgetOptions$Mutation$createGame? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$createGame());
  return Mutation$createGame$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$createGame> useWatchMutation$createGame(
        WatchOptions$Mutation$createGame options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$createGame
    extends graphql.MutationOptions<Mutation$createGame> {
  WidgetOptions$Mutation$createGame({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$createGame? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$createGame? onCompleted,
    graphql.OnMutationUpdate<Mutation$createGame>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$createGame(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationcreateGame,
          parserFn: _parserFn$Mutation$createGame,
        );

  final OnMutationCompleted$Mutation$createGame? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$createGame
    = graphql.MultiSourceResult<Mutation$createGame> Function(
  Variables$Mutation$createGame, {
  Object? optimisticResult,
  Mutation$createGame? typedOptimisticResult,
});
typedef Builder$Mutation$createGame = widgets.Widget Function(
  RunMutation$Mutation$createGame,
  graphql.QueryResult<Mutation$createGame>?,
);

class Mutation$createGame$Widget
    extends graphql_flutter.Mutation<Mutation$createGame> {
  Mutation$createGame$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$createGame? options,
    required Builder$Mutation$createGame builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$createGame(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$createGame$createGame {
  Mutation$createGame$createGame({
    required this.id,
    required this.date,
    required this.startTime,
    required this.endTime,
    this.organizer,
    required this.sport,
    required this.gameFormat,
    required this.teams,
    required this.level,
    this.club,
    this.facility,
    this.$__typename = 'Game',
  });

  factory Mutation$createGame$createGame.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$date = json['date'];
    final l$startTime = json['startTime'];
    final l$endTime = json['endTime'];
    final l$organizer = json['organizer'];
    final l$sport = json['sport'];
    final l$gameFormat = json['gameFormat'];
    final l$teams = json['teams'];
    final l$level = json['level'];
    final l$club = json['club'];
    final l$facility = json['facility'];
    final l$$__typename = json['__typename'];
    return Mutation$createGame$createGame(
      id: (l$id as String),
      date: (l$date as String),
      startTime: (l$startTime as int),
      endTime: (l$endTime as int),
      organizer: l$organizer == null
          ? null
          : Mutation$createGame$createGame$organizer.fromJson(
              (l$organizer as Map<String, dynamic>)),
      sport: fromJson$Enum$Sport((l$sport as String)),
      gameFormat: fromJson$Enum$GameFormat((l$gameFormat as String)),
      teams: (l$teams as List<dynamic>)
          .map((e) => Mutation$createGame$createGame$teams.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      level: fromJson$Enum$Level((l$level as String)),
      club: l$club == null
          ? null
          : Mutation$createGame$createGame$club.fromJson(
              (l$club as Map<String, dynamic>)),
      facility: l$facility == null
          ? null
          : Mutation$createGame$createGame$facility.fromJson(
              (l$facility as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String date;

  final int startTime;

  final int endTime;

  final Mutation$createGame$createGame$organizer? organizer;

  final Enum$Sport sport;

  final Enum$GameFormat gameFormat;

  final List<Mutation$createGame$createGame$teams> teams;

  final Enum$Level level;

  final Mutation$createGame$createGame$club? club;

  final Mutation$createGame$createGame$facility? facility;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$date = date;
    _resultData['date'] = l$date;
    final l$startTime = startTime;
    _resultData['startTime'] = l$startTime;
    final l$endTime = endTime;
    _resultData['endTime'] = l$endTime;
    final l$organizer = organizer;
    _resultData['organizer'] = l$organizer?.toJson();
    final l$sport = sport;
    _resultData['sport'] = toJson$Enum$Sport(l$sport);
    final l$gameFormat = gameFormat;
    _resultData['gameFormat'] = toJson$Enum$GameFormat(l$gameFormat);
    final l$teams = teams;
    _resultData['teams'] = l$teams.map((e) => e.toJson()).toList();
    final l$level = level;
    _resultData['level'] = toJson$Enum$Level(l$level);
    final l$club = club;
    _resultData['club'] = l$club?.toJson();
    final l$facility = facility;
    _resultData['facility'] = l$facility?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$date = date;
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$organizer = organizer;
    final l$sport = sport;
    final l$gameFormat = gameFormat;
    final l$teams = teams;
    final l$level = level;
    final l$club = club;
    final l$facility = facility;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$date,
      l$startTime,
      l$endTime,
      l$organizer,
      l$sport,
      l$gameFormat,
      Object.hashAll(l$teams.map((v) => v)),
      l$level,
      l$club,
      l$facility,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createGame$createGame ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (l$date != lOther$date) {
      return false;
    }
    final l$startTime = startTime;
    final lOther$startTime = other.startTime;
    if (l$startTime != lOther$startTime) {
      return false;
    }
    final l$endTime = endTime;
    final lOther$endTime = other.endTime;
    if (l$endTime != lOther$endTime) {
      return false;
    }
    final l$organizer = organizer;
    final lOther$organizer = other.organizer;
    if (l$organizer != lOther$organizer) {
      return false;
    }
    final l$sport = sport;
    final lOther$sport = other.sport;
    if (l$sport != lOther$sport) {
      return false;
    }
    final l$gameFormat = gameFormat;
    final lOther$gameFormat = other.gameFormat;
    if (l$gameFormat != lOther$gameFormat) {
      return false;
    }
    final l$teams = teams;
    final lOther$teams = other.teams;
    if (l$teams.length != lOther$teams.length) {
      return false;
    }
    for (int i = 0; i < l$teams.length; i++) {
      final l$teams$entry = l$teams[i];
      final lOther$teams$entry = lOther$teams[i];
      if (l$teams$entry != lOther$teams$entry) {
        return false;
      }
    }
    final l$level = level;
    final lOther$level = other.level;
    if (l$level != lOther$level) {
      return false;
    }
    final l$club = club;
    final lOther$club = other.club;
    if (l$club != lOther$club) {
      return false;
    }
    final l$facility = facility;
    final lOther$facility = other.facility;
    if (l$facility != lOther$facility) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createGame$createGame
    on Mutation$createGame$createGame {
  CopyWith$Mutation$createGame$createGame<Mutation$createGame$createGame>
      get copyWith => CopyWith$Mutation$createGame$createGame(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createGame$createGame<TRes> {
  factory CopyWith$Mutation$createGame$createGame(
    Mutation$createGame$createGame instance,
    TRes Function(Mutation$createGame$createGame) then,
  ) = _CopyWithImpl$Mutation$createGame$createGame;

  factory CopyWith$Mutation$createGame$createGame.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGame$createGame;

  TRes call({
    String? id,
    String? date,
    int? startTime,
    int? endTime,
    Mutation$createGame$createGame$organizer? organizer,
    Enum$Sport? sport,
    Enum$GameFormat? gameFormat,
    List<Mutation$createGame$createGame$teams>? teams,
    Enum$Level? level,
    Mutation$createGame$createGame$club? club,
    Mutation$createGame$createGame$facility? facility,
    String? $__typename,
  });
  CopyWith$Mutation$createGame$createGame$organizer<TRes> get organizer;
  TRes teams(
      Iterable<Mutation$createGame$createGame$teams> Function(
              Iterable<
                  CopyWith$Mutation$createGame$createGame$teams<
                      Mutation$createGame$createGame$teams>>)
          _fn);
  CopyWith$Mutation$createGame$createGame$club<TRes> get club;
  CopyWith$Mutation$createGame$createGame$facility<TRes> get facility;
}

class _CopyWithImpl$Mutation$createGame$createGame<TRes>
    implements CopyWith$Mutation$createGame$createGame<TRes> {
  _CopyWithImpl$Mutation$createGame$createGame(
    this._instance,
    this._then,
  );

  final Mutation$createGame$createGame _instance;

  final TRes Function(Mutation$createGame$createGame) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? date = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? organizer = _undefined,
    Object? sport = _undefined,
    Object? gameFormat = _undefined,
    Object? teams = _undefined,
    Object? level = _undefined,
    Object? club = _undefined,
    Object? facility = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGame$createGame(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        date: date == _undefined || date == null
            ? _instance.date
            : (date as String),
        startTime: startTime == _undefined || startTime == null
            ? _instance.startTime
            : (startTime as int),
            ? _instance.endTime
            : (endTime as int),
        organizer: organizer == _undefined
            ? _instance.organizer
            : (organizer as Mutation$createGame$createGame$organizer?),
        sport: sport == _undefined || sport == null
            ? _instance.sport
            : (sport as Enum$Sport),
        gameFormat: gameFormat == _undefined || gameFormat == null
            ? _instance.gameFormat
            : (gameFormat as Enum$GameFormat),
        teams: teams == _undefined || teams == null
            ? _instance.teams
            : (teams as List<Mutation$createGame$createGame$teams>),
        level: level == _undefined || level == null
            ? _instance.level
            : (level as Enum$Level),
        club: club == _undefined
            ? _instance.club
            : (club as Mutation$createGame$createGame$club?),
        facility: facility == _undefined
            ? _instance.facility
            : (facility as Mutation$createGame$createGame$facility?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$createGame$createGame$organizer<TRes> get organizer {
    final local$organizer = _instance.organizer;
    return local$organizer == null
        ? CopyWith$Mutation$createGame$createGame$organizer.stub(
            _then(_instance))
        : CopyWith$Mutation$createGame$createGame$organizer(
            local$organizer, (e) => call(organizer: e));
  }

  TRes teams(
          Iterable<Mutation$createGame$createGame$teams> Function(
                  Iterable<
                      CopyWith$Mutation$createGame$createGame$teams<
                          Mutation$createGame$createGame$teams>>)
              _fn) =>
      call(
          teams: _fn(_instance.teams
              .map((e) => CopyWith$Mutation$createGame$createGame$teams(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Mutation$createGame$createGame$club<TRes> get club {
    final local$club = _instance.club;
    return local$club == null
        ? CopyWith$Mutation$createGame$createGame$club.stub(_then(_instance))
        : CopyWith$Mutation$createGame$createGame$club(
            local$club, (e) => call(club: e));
  }

  CopyWith$Mutation$createGame$createGame$facility<TRes> get facility {
    final local$facility = _instance.facility;
    return local$facility == null
        ? CopyWith$Mutation$createGame$createGame$facility.stub(
            _then(_instance))
        : CopyWith$Mutation$createGame$createGame$facility(
            local$facility, (e) => call(facility: e));
  }
}

class _CopyWithStubImpl$Mutation$createGame$createGame<TRes>
    implements CopyWith$Mutation$createGame$createGame<TRes> {
  _CopyWithStubImpl$Mutation$createGame$createGame(this._res);

  TRes _res;

  call({
    String? id,
    String? date,
    int? startTime,
    int? endTime,
    Mutation$createGame$createGame$organizer? organizer,
    Enum$Sport? sport,
    Enum$GameFormat? gameFormat,
    List<Mutation$createGame$createGame$teams>? teams,
    Enum$Level? level,
    Mutation$createGame$createGame$club? club,
    Mutation$createGame$createGame$facility? facility,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$createGame$createGame$organizer<TRes> get organizer =>
      CopyWith$Mutation$createGame$createGame$organizer.stub(_res);

  teams(_fn) => _res;

  CopyWith$Mutation$createGame$createGame$club<TRes> get club =>
      CopyWith$Mutation$createGame$createGame$club.stub(_res);

  CopyWith$Mutation$createGame$createGame$facility<TRes> get facility =>
      CopyWith$Mutation$createGame$createGame$facility.stub(_res);
}

class Mutation$createGame$createGame$organizer {
  Mutation$createGame$createGame$organizer({
    required this.id,
    this.$__typename = 'Player',
  });

  factory Mutation$createGame$createGame$organizer.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$createGame$createGame$organizer(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createGame$createGame$organizer ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createGame$createGame$organizer
    on Mutation$createGame$createGame$organizer {
  CopyWith$Mutation$createGame$createGame$organizer<
          Mutation$createGame$createGame$organizer>
      get copyWith => CopyWith$Mutation$createGame$createGame$organizer(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createGame$createGame$organizer<TRes> {
  factory CopyWith$Mutation$createGame$createGame$organizer(
    Mutation$createGame$createGame$organizer instance,
    TRes Function(Mutation$createGame$createGame$organizer) then,
  ) = _CopyWithImpl$Mutation$createGame$createGame$organizer;

  factory CopyWith$Mutation$createGame$createGame$organizer.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGame$createGame$organizer;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createGame$createGame$organizer<TRes>
    implements CopyWith$Mutation$createGame$createGame$organizer<TRes> {
  _CopyWithImpl$Mutation$createGame$createGame$organizer(
    this._instance,
    this._then,
  );

  final Mutation$createGame$createGame$organizer _instance;

  final TRes Function(Mutation$createGame$createGame$organizer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGame$createGame$organizer(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createGame$createGame$organizer<TRes>
    implements CopyWith$Mutation$createGame$createGame$organizer<TRes> {
  _CopyWithStubImpl$Mutation$createGame$createGame$organizer(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createGame$createGame$teams {
  Mutation$createGame$createGame$teams({
    this.score,
    required this.players,
    this.$__typename = 'Team',
  });

  factory Mutation$createGame$createGame$teams.fromJson(
      Map<String, dynamic> json) {
    final l$score = json['score'];
    final l$players = json['players'];
    final l$$__typename = json['__typename'];
    return Mutation$createGame$createGame$teams(
      score: (l$score as int?),
      players: (l$players as List<dynamic>)
          .map((e) => Mutation$createGame$createGame$teams$players.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? score;

  final List<Mutation$createGame$createGame$teams$players> players;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$score = score;
    _resultData['score'] = l$score;
    final l$players = players;
    _resultData['players'] = l$players.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$score = score;
    final l$players = players;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$score,
      Object.hashAll(l$players.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createGame$createGame$teams ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$players = players;
    final lOther$players = other.players;
    if (l$players.length != lOther$players.length) {
      return false;
    }
    for (int i = 0; i < l$players.length; i++) {
      final l$players$entry = l$players[i];
      final lOther$players$entry = lOther$players[i];
      if (l$players$entry != lOther$players$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createGame$createGame$teams
    on Mutation$createGame$createGame$teams {
  CopyWith$Mutation$createGame$createGame$teams<
          Mutation$createGame$createGame$teams>
      get copyWith => CopyWith$Mutation$createGame$createGame$teams(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createGame$createGame$teams<TRes> {
  factory CopyWith$Mutation$createGame$createGame$teams(
    Mutation$createGame$createGame$teams instance,
    TRes Function(Mutation$createGame$createGame$teams) then,
  ) = _CopyWithImpl$Mutation$createGame$createGame$teams;

  factory CopyWith$Mutation$createGame$createGame$teams.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGame$createGame$teams;

  TRes call({
    int? score,
    List<Mutation$createGame$createGame$teams$players>? players,
    String? $__typename,
  });
  TRes players(
      Iterable<Mutation$createGame$createGame$teams$players> Function(
              Iterable<
                  CopyWith$Mutation$createGame$createGame$teams$players<
                      Mutation$createGame$createGame$teams$players>>)
          _fn);
}

class _CopyWithImpl$Mutation$createGame$createGame$teams<TRes>
    implements CopyWith$Mutation$createGame$createGame$teams<TRes> {
  _CopyWithImpl$Mutation$createGame$createGame$teams(
    this._instance,
    this._then,
  );

  final Mutation$createGame$createGame$teams _instance;

  final TRes Function(Mutation$createGame$createGame$teams) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? score = _undefined,
    Object? players = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGame$createGame$teams(
        score: score == _undefined ? _instance.score : (score as int?),
        players: players == _undefined || players == null
            ? _instance.players
            : (players as List<Mutation$createGame$createGame$teams$players>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes players(
          Iterable<Mutation$createGame$createGame$teams$players> Function(
                  Iterable<
                      CopyWith$Mutation$createGame$createGame$teams$players<
                          Mutation$createGame$createGame$teams$players>>)
              _fn) =>
      call(
          players: _fn(_instance.players
              .map((e) => CopyWith$Mutation$createGame$createGame$teams$players(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$createGame$createGame$teams<TRes>
    implements CopyWith$Mutation$createGame$createGame$teams<TRes> {
  _CopyWithStubImpl$Mutation$createGame$createGame$teams(this._res);

  TRes _res;

  call({
    int? score,
    List<Mutation$createGame$createGame$teams$players>? players,
    String? $__typename,
  }) =>
      _res;

  players(_fn) => _res;
}

class Mutation$createGame$createGame$teams$players {
  Mutation$createGame$createGame$teams$players({
    this.name,
    this.$__typename = 'TeamPlayerSlot',
  });

  factory Mutation$createGame$createGame$teams$players.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createGame$createGame$teams$players(
      name: (l$name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createGame$createGame$teams$players ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createGame$createGame$teams$players
    on Mutation$createGame$createGame$teams$players {
  CopyWith$Mutation$createGame$createGame$teams$players<
          Mutation$createGame$createGame$teams$players>
      get copyWith => CopyWith$Mutation$createGame$createGame$teams$players(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createGame$createGame$teams$players<TRes> {
  factory CopyWith$Mutation$createGame$createGame$teams$players(
    Mutation$createGame$createGame$teams$players instance,
    TRes Function(Mutation$createGame$createGame$teams$players) then,
  ) = _CopyWithImpl$Mutation$createGame$createGame$teams$players;

  factory CopyWith$Mutation$createGame$createGame$teams$players.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGame$createGame$teams$players;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createGame$createGame$teams$players<TRes>
    implements CopyWith$Mutation$createGame$createGame$teams$players<TRes> {
  _CopyWithImpl$Mutation$createGame$createGame$teams$players(
    this._instance,
    this._then,
  );

  final Mutation$createGame$createGame$teams$players _instance;

  final TRes Function(Mutation$createGame$createGame$teams$players) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGame$createGame$teams$players(
        name: name == _undefined ? _instance.name : (name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createGame$createGame$teams$players<TRes>
    implements CopyWith$Mutation$createGame$createGame$teams$players<TRes> {
  _CopyWithStubImpl$Mutation$createGame$createGame$teams$players(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createGame$createGame$club {
  Mutation$createGame$createGame$club({
    required this.id,
    required this.name,
    this.$__typename = 'Club',
  });

  factory Mutation$createGame$createGame$club.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createGame$createGame$club(
      id: (l$id as String),
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createGame$createGame$club ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createGame$createGame$club
    on Mutation$createGame$createGame$club {
  CopyWith$Mutation$createGame$createGame$club<
          Mutation$createGame$createGame$club>
      get copyWith => CopyWith$Mutation$createGame$createGame$club(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createGame$createGame$club<TRes> {
  factory CopyWith$Mutation$createGame$createGame$club(
    Mutation$createGame$createGame$club instance,
    TRes Function(Mutation$createGame$createGame$club) then,
  ) = _CopyWithImpl$Mutation$createGame$createGame$club;

  factory CopyWith$Mutation$createGame$createGame$club.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGame$createGame$club;

  TRes call({
    String? id,
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createGame$createGame$club<TRes>
    implements CopyWith$Mutation$createGame$createGame$club<TRes> {
  _CopyWithImpl$Mutation$createGame$createGame$club(
    this._instance,
    this._then,
  );

  final Mutation$createGame$createGame$club _instance;

  final TRes Function(Mutation$createGame$createGame$club) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGame$createGame$club(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createGame$createGame$club<TRes>
    implements CopyWith$Mutation$createGame$createGame$club<TRes> {
  _CopyWithStubImpl$Mutation$createGame$createGame$club(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$createGame$createGame$facility {
  Mutation$createGame$createGame$facility({
    required this.name,
    this.$__typename = 'Facility',
  });

  factory Mutation$createGame$createGame$facility.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Mutation$createGame$createGame$facility(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$createGame$createGame$facility ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$createGame$createGame$facility
    on Mutation$createGame$createGame$facility {
  CopyWith$Mutation$createGame$createGame$facility<
          Mutation$createGame$createGame$facility>
      get copyWith => CopyWith$Mutation$createGame$createGame$facility(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$createGame$createGame$facility<TRes> {
  factory CopyWith$Mutation$createGame$createGame$facility(
    Mutation$createGame$createGame$facility instance,
    TRes Function(Mutation$createGame$createGame$facility) then,
  ) = _CopyWithImpl$Mutation$createGame$createGame$facility;

  factory CopyWith$Mutation$createGame$createGame$facility.stub(TRes res) =
      _CopyWithStubImpl$Mutation$createGame$createGame$facility;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$createGame$createGame$facility<TRes>
    implements CopyWith$Mutation$createGame$createGame$facility<TRes> {
  _CopyWithImpl$Mutation$createGame$createGame$facility(
    this._instance,
    this._then,
  );

  final Mutation$createGame$createGame$facility _instance;

  final TRes Function(Mutation$createGame$createGame$facility) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$createGame$createGame$facility(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$createGame$createGame$facility<TRes>
    implements CopyWith$Mutation$createGame$createGame$facility<TRes> {
  _CopyWithStubImpl$Mutation$createGame$createGame$facility(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
