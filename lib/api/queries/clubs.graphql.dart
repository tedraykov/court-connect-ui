import '../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$clubs {
  factory Variables$Query$clubs({Input$ClubFilterInput? input}) =>
      Variables$Query$clubs._({
        if (input != null) r'input': input,
      });

  Variables$Query$clubs._(this._$data);

  factory Variables$Query$clubs.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('input')) {
      final l$input = data['input'];
      result$data['input'] = l$input == null
          ? null
          : Input$ClubFilterInput.fromJson((l$input as Map<String, dynamic>));
    }
    return Variables$Query$clubs._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ClubFilterInput? get input =>
      (_$data['input'] as Input$ClubFilterInput?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('input')) {
      final l$input = input;
      result$data['input'] = l$input?.toJson();
    }
    return result$data;
  }

  CopyWith$Variables$Query$clubs<Variables$Query$clubs> get copyWith =>
      CopyWith$Variables$Query$clubs(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$clubs || runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (_$data.containsKey('input') != other._$data.containsKey('input')) {
      return false;
    }
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([_$data.containsKey('input') ? l$input : const {}]);
  }
}

abstract class CopyWith$Variables$Query$clubs<TRes> {
  factory CopyWith$Variables$Query$clubs(
    Variables$Query$clubs instance,
    TRes Function(Variables$Query$clubs) then,
  ) = _CopyWithImpl$Variables$Query$clubs;

  factory CopyWith$Variables$Query$clubs.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$clubs;

  TRes call({Input$ClubFilterInput? input});
}

class _CopyWithImpl$Variables$Query$clubs<TRes>
    implements CopyWith$Variables$Query$clubs<TRes> {
  _CopyWithImpl$Variables$Query$clubs(
    this._instance,
    this._then,
  );

  final Variables$Query$clubs _instance;

  final TRes Function(Variables$Query$clubs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) => _then(Variables$Query$clubs._({
        ..._instance._$data,
        if (input != _undefined) 'input': (input as Input$ClubFilterInput?),
      }));
}

class _CopyWithStubImpl$Variables$Query$clubs<TRes>
    implements CopyWith$Variables$Query$clubs<TRes> {
  _CopyWithStubImpl$Variables$Query$clubs(this._res);

  TRes _res;

  call({Input$ClubFilterInput? input}) => _res;
}

class Query$clubs {
  Query$clubs({
    required this.clubs,
    this.$__typename = 'Query',
  });

  factory Query$clubs.fromJson(Map<String, dynamic> json) {
    final l$clubs = json['clubs'];
    final l$$__typename = json['__typename'];
    return Query$clubs(
      clubs: (l$clubs as List<dynamic>)
          .map((e) => Query$clubs$clubs.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$clubs$clubs> clubs;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$clubs = clubs;
    _resultData['clubs'] = l$clubs.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$clubs = clubs;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$clubs.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$clubs || runtimeType != other.runtimeType) {
      return false;
    }
    final l$clubs = clubs;
    final lOther$clubs = other.clubs;
    if (l$clubs.length != lOther$clubs.length) {
      return false;
    }
    for (int i = 0; i < l$clubs.length; i++) {
      final l$clubs$entry = l$clubs[i];
      final lOther$clubs$entry = lOther$clubs[i];
      if (l$clubs$entry != lOther$clubs$entry) {
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

extension UtilityExtension$Query$clubs on Query$clubs {
  CopyWith$Query$clubs<Query$clubs> get copyWith => CopyWith$Query$clubs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$clubs<TRes> {
  factory CopyWith$Query$clubs(
    Query$clubs instance,
    TRes Function(Query$clubs) then,
  ) = _CopyWithImpl$Query$clubs;

  factory CopyWith$Query$clubs.stub(TRes res) = _CopyWithStubImpl$Query$clubs;

  TRes call({
    List<Query$clubs$clubs>? clubs,
    String? $__typename,
  });
  TRes clubs(
      Iterable<Query$clubs$clubs> Function(
              Iterable<CopyWith$Query$clubs$clubs<Query$clubs$clubs>>)
          _fn);
}

class _CopyWithImpl$Query$clubs<TRes> implements CopyWith$Query$clubs<TRes> {
  _CopyWithImpl$Query$clubs(
    this._instance,
    this._then,
  );

  final Query$clubs _instance;

  final TRes Function(Query$clubs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? clubs = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$clubs(
        clubs: clubs == _undefined || clubs == null
            ? _instance.clubs
            : (clubs as List<Query$clubs$clubs>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes clubs(
          Iterable<Query$clubs$clubs> Function(
                  Iterable<CopyWith$Query$clubs$clubs<Query$clubs$clubs>>)
              _fn) =>
      call(
          clubs: _fn(_instance.clubs.map((e) => CopyWith$Query$clubs$clubs(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$clubs<TRes>
    implements CopyWith$Query$clubs<TRes> {
  _CopyWithStubImpl$Query$clubs(this._res);

  TRes _res;

  call({
    List<Query$clubs$clubs>? clubs,
    String? $__typename,
  }) =>
      _res;

  clubs(_fn) => _res;
}

const documentNodeQueryclubs = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'clubs'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ClubFilterInput'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'clubs'),
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'city'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'facilities'),
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
                name: NameNode(value: 'type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'sport'),
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
Query$clubs _parserFn$Query$clubs(Map<String, dynamic> data) =>
    Query$clubs.fromJson(data);
typedef OnQueryComplete$Query$clubs = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$clubs?,
);

class Options$Query$clubs extends graphql.QueryOptions<Query$clubs> {
  Options$Query$clubs({
    String? operationName,
    Variables$Query$clubs? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$clubs? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$clubs? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$clubs(data),
                  ),
          onError: onError,
          document: documentNodeQueryclubs,
          parserFn: _parserFn$Query$clubs,
        );

  final OnQueryComplete$Query$clubs? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$clubs extends graphql.WatchQueryOptions<Query$clubs> {
  WatchOptions$Query$clubs({
    String? operationName,
    Variables$Query$clubs? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$clubs? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryclubs,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$clubs,
        );
}

class FetchMoreOptions$Query$clubs extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$clubs({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$clubs? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryclubs,
        );
}

extension ClientExtension$Query$clubs on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$clubs>> query$clubs(
          [Options$Query$clubs? options]) async =>
      await this.query(options ?? Options$Query$clubs());
  graphql.ObservableQuery<Query$clubs> watchQuery$clubs(
          [WatchOptions$Query$clubs? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$clubs());
  void writeQuery$clubs({
    required Query$clubs data,
    Variables$Query$clubs? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryclubs),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$clubs? readQuery$clubs({
    Variables$Query$clubs? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryclubs),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$clubs.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$clubs> useQuery$clubs(
        [Options$Query$clubs? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$clubs());
graphql.ObservableQuery<Query$clubs> useWatchQuery$clubs(
        [WatchOptions$Query$clubs? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$clubs());

class Query$clubs$Widget extends graphql_flutter.Query<Query$clubs> {
  Query$clubs$Widget({
    widgets.Key? key,
    Options$Query$clubs? options,
    required graphql_flutter.QueryBuilder<Query$clubs> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$clubs(),
          builder: builder,
        );
}

class Query$clubs$clubs {
  Query$clubs$clubs({
    required this.id,
    required this.name,
    required this.city,
    required this.address,
    required this.facilities,
    this.$__typename = 'Club',
  });

  factory Query$clubs$clubs.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$city = json['city'];
    final l$address = json['address'];
    final l$facilities = json['facilities'];
    final l$$__typename = json['__typename'];
    return Query$clubs$clubs(
      id: (l$id as String),
      name: (l$name as String),
      city: (l$city as String),
      address: (l$address as String),
      facilities: (l$facilities as List<dynamic>)
          .map((e) => Query$clubs$clubs$facilities.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String city;

  final String address;

  final List<Query$clubs$clubs$facilities> facilities;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$city = city;
    _resultData['city'] = l$city;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$facilities = facilities;
    _resultData['facilities'] = l$facilities.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$city = city;
    final l$address = address;
    final l$facilities = facilities;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$city,
      l$address,
      Object.hashAll(l$facilities.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$clubs$clubs || runtimeType != other.runtimeType) {
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
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$facilities = facilities;
    final lOther$facilities = other.facilities;
    if (l$facilities.length != lOther$facilities.length) {
      return false;
    }
    for (int i = 0; i < l$facilities.length; i++) {
      final l$facilities$entry = l$facilities[i];
      final lOther$facilities$entry = lOther$facilities[i];
      if (l$facilities$entry != lOther$facilities$entry) {
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

extension UtilityExtension$Query$clubs$clubs on Query$clubs$clubs {
  CopyWith$Query$clubs$clubs<Query$clubs$clubs> get copyWith =>
      CopyWith$Query$clubs$clubs(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$clubs$clubs<TRes> {
  factory CopyWith$Query$clubs$clubs(
    Query$clubs$clubs instance,
    TRes Function(Query$clubs$clubs) then,
  ) = _CopyWithImpl$Query$clubs$clubs;

  factory CopyWith$Query$clubs$clubs.stub(TRes res) =
      _CopyWithStubImpl$Query$clubs$clubs;

  TRes call({
    String? id,
    String? name,
    String? city,
    String? address,
    List<Query$clubs$clubs$facilities>? facilities,
    String? $__typename,
  });
  TRes facilities(
      Iterable<Query$clubs$clubs$facilities> Function(
              Iterable<
                  CopyWith$Query$clubs$clubs$facilities<
                      Query$clubs$clubs$facilities>>)
          _fn);
}

class _CopyWithImpl$Query$clubs$clubs<TRes>
    implements CopyWith$Query$clubs$clubs<TRes> {
  _CopyWithImpl$Query$clubs$clubs(
    this._instance,
    this._then,
  );

  final Query$clubs$clubs _instance;

  final TRes Function(Query$clubs$clubs) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? city = _undefined,
    Object? address = _undefined,
    Object? facilities = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$clubs$clubs(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        city: city == _undefined || city == null
            ? _instance.city
            : (city as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        facilities: facilities == _undefined || facilities == null
            ? _instance.facilities
            : (facilities as List<Query$clubs$clubs$facilities>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes facilities(
          Iterable<Query$clubs$clubs$facilities> Function(
                  Iterable<
                      CopyWith$Query$clubs$clubs$facilities<
                          Query$clubs$clubs$facilities>>)
              _fn) =>
      call(
          facilities: _fn(_instance.facilities
              .map((e) => CopyWith$Query$clubs$clubs$facilities(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$clubs$clubs<TRes>
    implements CopyWith$Query$clubs$clubs<TRes> {
  _CopyWithStubImpl$Query$clubs$clubs(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? city,
    String? address,
    List<Query$clubs$clubs$facilities>? facilities,
    String? $__typename,
  }) =>
      _res;

  facilities(_fn) => _res;
}

class Query$clubs$clubs$facilities {
  Query$clubs$clubs$facilities({
    required this.name,
    required this.type,
    required this.sport,
    this.$__typename = 'Facility',
  });

  factory Query$clubs$clubs$facilities.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$type = json['type'];
    final l$sport = json['sport'];
    final l$$__typename = json['__typename'];
    return Query$clubs$clubs$facilities(
      name: (l$name as String),
      type: fromJson$Enum$FacilityType((l$type as String)),
      sport: fromJson$Enum$Sport((l$sport as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Enum$FacilityType type;

  final Enum$Sport sport;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$FacilityType(l$type);
    final l$sport = sport;
    _resultData['sport'] = toJson$Enum$Sport(l$sport);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$sport = sport;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$type,
      l$sport,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$clubs$clubs$facilities ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$sport = sport;
    final lOther$sport = other.sport;
    if (l$sport != lOther$sport) {
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

extension UtilityExtension$Query$clubs$clubs$facilities
    on Query$clubs$clubs$facilities {
  CopyWith$Query$clubs$clubs$facilities<Query$clubs$clubs$facilities>
      get copyWith => CopyWith$Query$clubs$clubs$facilities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$clubs$clubs$facilities<TRes> {
  factory CopyWith$Query$clubs$clubs$facilities(
    Query$clubs$clubs$facilities instance,
    TRes Function(Query$clubs$clubs$facilities) then,
  ) = _CopyWithImpl$Query$clubs$clubs$facilities;

  factory CopyWith$Query$clubs$clubs$facilities.stub(TRes res) =
      _CopyWithStubImpl$Query$clubs$clubs$facilities;

  TRes call({
    String? name,
    Enum$FacilityType? type,
    Enum$Sport? sport,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$clubs$clubs$facilities<TRes>
    implements CopyWith$Query$clubs$clubs$facilities<TRes> {
  _CopyWithImpl$Query$clubs$clubs$facilities(
    this._instance,
    this._then,
  );

  final Query$clubs$clubs$facilities _instance;

  final TRes Function(Query$clubs$clubs$facilities) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? sport = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$clubs$clubs$facilities(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$FacilityType),
        sport: sport == _undefined || sport == null
            ? _instance.sport
            : (sport as Enum$Sport),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$clubs$clubs$facilities<TRes>
    implements CopyWith$Query$clubs$clubs$facilities<TRes> {
  _CopyWithStubImpl$Query$clubs$clubs$facilities(this._res);

  TRes _res;

  call({
    String? name,
    Enum$FacilityType? type,
    Enum$Sport? sport,
    String? $__typename,
  }) =>
      _res;
}
