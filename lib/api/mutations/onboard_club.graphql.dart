import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Mutation$onboardClub {
  factory Variables$Mutation$onboardClub({required Input$NewClub input}) =>
      Variables$Mutation$onboardClub._({
        r'input': input,
      });

  Variables$Mutation$onboardClub._(this._$data);

  factory Variables$Mutation$onboardClub.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$NewClub.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$onboardClub._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$NewClub get input => (_$data['input'] as Input$NewClub);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$onboardClub<Variables$Mutation$onboardClub>
      get copyWith => CopyWith$Variables$Mutation$onboardClub(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$onboardClub ||
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

abstract class CopyWith$Variables$Mutation$onboardClub<TRes> {
  factory CopyWith$Variables$Mutation$onboardClub(
    Variables$Mutation$onboardClub instance,
    TRes Function(Variables$Mutation$onboardClub) then,
  ) = _CopyWithImpl$Variables$Mutation$onboardClub;

  factory CopyWith$Variables$Mutation$onboardClub.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$onboardClub;

  TRes call({Input$NewClub? input});
}

class _CopyWithImpl$Variables$Mutation$onboardClub<TRes>
    implements CopyWith$Variables$Mutation$onboardClub<TRes> {
  _CopyWithImpl$Variables$Mutation$onboardClub(
    this._instance,
    this._then,
  );

  final Variables$Mutation$onboardClub _instance;

  final TRes Function(Variables$Mutation$onboardClub) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$onboardClub._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$NewClub),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$onboardClub<TRes>
    implements CopyWith$Variables$Mutation$onboardClub<TRes> {
  _CopyWithStubImpl$Variables$Mutation$onboardClub(this._res);

  TRes _res;

  call({Input$NewClub? input}) => _res;
}

class Mutation$onboardClub {
  Mutation$onboardClub({
    required this.onboardClub,
    this.$__typename = 'Mutation',
  });

  factory Mutation$onboardClub.fromJson(Map<String, dynamic> json) {
    final l$onboardClub = json['onboardClub'];
    final l$$__typename = json['__typename'];
    return Mutation$onboardClub(
      onboardClub: Mutation$onboardClub$onboardClub.fromJson(
          (l$onboardClub as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$onboardClub$onboardClub onboardClub;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$onboardClub = onboardClub;
    _resultData['onboardClub'] = l$onboardClub.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$onboardClub = onboardClub;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$onboardClub,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$onboardClub || runtimeType != other.runtimeType) {
      return false;
    }
    final l$onboardClub = onboardClub;
    final lOther$onboardClub = other.onboardClub;
    if (l$onboardClub != lOther$onboardClub) {
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

extension UtilityExtension$Mutation$onboardClub on Mutation$onboardClub {
  CopyWith$Mutation$onboardClub<Mutation$onboardClub> get copyWith =>
      CopyWith$Mutation$onboardClub(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$onboardClub<TRes> {
  factory CopyWith$Mutation$onboardClub(
    Mutation$onboardClub instance,
    TRes Function(Mutation$onboardClub) then,
  ) = _CopyWithImpl$Mutation$onboardClub;

  factory CopyWith$Mutation$onboardClub.stub(TRes res) =
      _CopyWithStubImpl$Mutation$onboardClub;

  TRes call({
    Mutation$onboardClub$onboardClub? onboardClub,
    String? $__typename,
  });
  CopyWith$Mutation$onboardClub$onboardClub<TRes> get onboardClub;
}

class _CopyWithImpl$Mutation$onboardClub<TRes>
    implements CopyWith$Mutation$onboardClub<TRes> {
  _CopyWithImpl$Mutation$onboardClub(
    this._instance,
    this._then,
  );

  final Mutation$onboardClub _instance;

  final TRes Function(Mutation$onboardClub) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? onboardClub = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$onboardClub(
        onboardClub: onboardClub == _undefined || onboardClub == null
            ? _instance.onboardClub
            : (onboardClub as Mutation$onboardClub$onboardClub),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$onboardClub$onboardClub<TRes> get onboardClub {
    final local$onboardClub = _instance.onboardClub;
    return CopyWith$Mutation$onboardClub$onboardClub(
        local$onboardClub, (e) => call(onboardClub: e));
  }
}

class _CopyWithStubImpl$Mutation$onboardClub<TRes>
    implements CopyWith$Mutation$onboardClub<TRes> {
  _CopyWithStubImpl$Mutation$onboardClub(this._res);

  TRes _res;

  call({
    Mutation$onboardClub$onboardClub? onboardClub,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$onboardClub$onboardClub<TRes> get onboardClub =>
      CopyWith$Mutation$onboardClub$onboardClub.stub(_res);
}

const documentNodeMutationonboardClub = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'onboardClub'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'NewClub'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onboardClub'),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$onboardClub _parserFn$Mutation$onboardClub(
        Map<String, dynamic> data) =>
    Mutation$onboardClub.fromJson(data);
typedef OnMutationCompleted$Mutation$onboardClub = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$onboardClub?,
);

class Options$Mutation$onboardClub
    extends graphql.MutationOptions<Mutation$onboardClub> {
  Options$Mutation$onboardClub({
    String? operationName,
    required Variables$Mutation$onboardClub variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$onboardClub? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$onboardClub? onCompleted,
    graphql.OnMutationUpdate<Mutation$onboardClub>? update,
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
                    data == null ? null : _parserFn$Mutation$onboardClub(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationonboardClub,
          parserFn: _parserFn$Mutation$onboardClub,
        );

  final OnMutationCompleted$Mutation$onboardClub? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$onboardClub
    extends graphql.WatchQueryOptions<Mutation$onboardClub> {
  WatchOptions$Mutation$onboardClub({
    String? operationName,
    required Variables$Mutation$onboardClub variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$onboardClub? typedOptimisticResult,
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
          document: documentNodeMutationonboardClub,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$onboardClub,
        );
}

extension ClientExtension$Mutation$onboardClub on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$onboardClub>> mutate$onboardClub(
          Options$Mutation$onboardClub options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$onboardClub> watchMutation$onboardClub(
          WatchOptions$Mutation$onboardClub options) =>
      this.watchMutation(options);
}

class Mutation$onboardClub$HookResult {
  Mutation$onboardClub$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$onboardClub runMutation;

  final graphql.QueryResult<Mutation$onboardClub> result;
}

Mutation$onboardClub$HookResult useMutation$onboardClub(
    [WidgetOptions$Mutation$onboardClub? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$onboardClub());
  return Mutation$onboardClub$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$onboardClub> useWatchMutation$onboardClub(
        WatchOptions$Mutation$onboardClub options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$onboardClub
    extends graphql.MutationOptions<Mutation$onboardClub> {
  WidgetOptions$Mutation$onboardClub({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$onboardClub? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$onboardClub? onCompleted,
    graphql.OnMutationUpdate<Mutation$onboardClub>? update,
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
                    data == null ? null : _parserFn$Mutation$onboardClub(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationonboardClub,
          parserFn: _parserFn$Mutation$onboardClub,
        );

  final OnMutationCompleted$Mutation$onboardClub? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$onboardClub
    = graphql.MultiSourceResult<Mutation$onboardClub> Function(
  Variables$Mutation$onboardClub, {
  Object? optimisticResult,
  Mutation$onboardClub? typedOptimisticResult,
});
typedef Builder$Mutation$onboardClub = widgets.Widget Function(
  RunMutation$Mutation$onboardClub,
  graphql.QueryResult<Mutation$onboardClub>?,
);

class Mutation$onboardClub$Widget
    extends graphql_flutter.Mutation<Mutation$onboardClub> {
  Mutation$onboardClub$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$onboardClub? options,
    required Builder$Mutation$onboardClub builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$onboardClub(),
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

class Mutation$onboardClub$onboardClub {
  Mutation$onboardClub$onboardClub({
    required this.name,
    required this.id,
    this.$__typename = 'Club',
  });

  factory Mutation$onboardClub$onboardClub.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$onboardClub$onboardClub(
      name: (l$name as String),
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$onboardClub$onboardClub ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Mutation$onboardClub$onboardClub
    on Mutation$onboardClub$onboardClub {
  CopyWith$Mutation$onboardClub$onboardClub<Mutation$onboardClub$onboardClub>
      get copyWith => CopyWith$Mutation$onboardClub$onboardClub(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$onboardClub$onboardClub<TRes> {
  factory CopyWith$Mutation$onboardClub$onboardClub(
    Mutation$onboardClub$onboardClub instance,
    TRes Function(Mutation$onboardClub$onboardClub) then,
  ) = _CopyWithImpl$Mutation$onboardClub$onboardClub;

  factory CopyWith$Mutation$onboardClub$onboardClub.stub(TRes res) =
      _CopyWithStubImpl$Mutation$onboardClub$onboardClub;

  TRes call({
    String? name,
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$onboardClub$onboardClub<TRes>
    implements CopyWith$Mutation$onboardClub$onboardClub<TRes> {
  _CopyWithImpl$Mutation$onboardClub$onboardClub(
    this._instance,
    this._then,
  );

  final Mutation$onboardClub$onboardClub _instance;

  final TRes Function(Mutation$onboardClub$onboardClub) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$onboardClub$onboardClub(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$onboardClub$onboardClub<TRes>
    implements CopyWith$Mutation$onboardClub$onboardClub<TRes> {
  _CopyWithStubImpl$Mutation$onboardClub$onboardClub(this._res);

  TRes _res;

  call({
    String? name,
    String? id,
    String? $__typename,
  }) =>
      _res;
}
