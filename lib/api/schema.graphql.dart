class Input$ClubFilterInput {
  factory Input$ClubFilterInput({
    Enum$Sport? sport,
    String? city,
  }) =>
      Input$ClubFilterInput._({
        if (sport != null) r'sport': sport,
        if (city != null) r'city': city,
      });

  Input$ClubFilterInput._(this._$data);

  factory Input$ClubFilterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('sport')) {
      final l$sport = data['sport'];
      result$data['sport'] =
          l$sport == null ? null : fromJson$Enum$Sport((l$sport as String));
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = (l$city as String?);
    }
    return Input$ClubFilterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Sport? get sport => (_$data['sport'] as Enum$Sport?);

  String? get city => (_$data['city'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('sport')) {
      final l$sport = sport;
      result$data['sport'] =
          l$sport == null ? null : toJson$Enum$Sport(l$sport);
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city;
    }
    return result$data;
  }

  CopyWith$Input$ClubFilterInput<Input$ClubFilterInput> get copyWith =>
      CopyWith$Input$ClubFilterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClubFilterInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sport = sport;
    final lOther$sport = other.sport;
    if (_$data.containsKey('sport') != other._$data.containsKey('sport')) {
      return false;
    }
    if (l$sport != lOther$sport) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$sport = sport;
    final l$city = city;
    return Object.hashAll([
      _$data.containsKey('sport') ? l$sport : const {},
      _$data.containsKey('city') ? l$city : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClubFilterInput<TRes> {
  factory CopyWith$Input$ClubFilterInput(
    Input$ClubFilterInput instance,
    TRes Function(Input$ClubFilterInput) then,
  ) = _CopyWithImpl$Input$ClubFilterInput;

  factory CopyWith$Input$ClubFilterInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClubFilterInput;

  TRes call({
    Enum$Sport? sport,
    String? city,
  });
}

class _CopyWithImpl$Input$ClubFilterInput<TRes>
    implements CopyWith$Input$ClubFilterInput<TRes> {
  _CopyWithImpl$Input$ClubFilterInput(
    this._instance,
    this._then,
  );

  final Input$ClubFilterInput _instance;

  final TRes Function(Input$ClubFilterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sport = _undefined,
    Object? city = _undefined,
  }) =>
      _then(Input$ClubFilterInput._({
        ..._instance._$data,
        if (sport != _undefined) 'sport': (sport as Enum$Sport?),
        if (city != _undefined) 'city': (city as String?),
      }));
}

class _CopyWithStubImpl$Input$ClubFilterInput<TRes>
    implements CopyWith$Input$ClubFilterInput<TRes> {
  _CopyWithStubImpl$Input$ClubFilterInput(this._res);

  TRes _res;

  call({
    Enum$Sport? sport,
    String? city,
  }) =>
      _res;
}

class Input$NewGame {
  factory Input$NewGame({
    required String date,
    required int startTime,
    required int endTime,
    required Enum$Level level,
    required Enum$Sport sport,
    required Enum$GameFormat gameFormat,
    String? clubID,
    String? facilityID,
  }) =>
      Input$NewGame._({
        r'date': date,
        r'startTime': startTime,
        r'endTime': endTime,
        r'level': level,
        r'sport': sport,
        r'gameFormat': gameFormat,
        if (clubID != null) r'clubID': clubID,
        if (facilityID != null) r'facilityID': facilityID,
      });

  Input$NewGame._(this._$data);

  factory Input$NewGame.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$date = data['date'];
    result$data['date'] = (l$date as String);
    final l$startTime = data['startTime'];
    result$data['startTime'] = (l$startTime as int);
    final l$endTime = data['endTime'];
    result$data['endTime'] = (l$endTime as int);
    final l$level = data['level'];
    result$data['level'] = fromJson$Enum$Level((l$level as String));
    final l$sport = data['sport'];
    result$data['sport'] = fromJson$Enum$Sport((l$sport as String));
    final l$gameFormat = data['gameFormat'];
    result$data['gameFormat'] =
        fromJson$Enum$GameFormat((l$gameFormat as String));
    if (data.containsKey('clubID')) {
      final l$clubID = data['clubID'];
      result$data['clubID'] = (l$clubID as String?);
    }
    if (data.containsKey('facilityID')) {
      final l$facilityID = data['facilityID'];
      result$data['facilityID'] = (l$facilityID as String?);
    }
    return Input$NewGame._(result$data);
  }

  Map<String, dynamic> _$data;

  String get date => (_$data['date'] as String);

  int get startTime => (_$data['startTime'] as int);

  int get endTime => (_$data['endTime'] as int);

  Enum$Level get level => (_$data['level'] as Enum$Level);

  Enum$Sport get sport => (_$data['sport'] as Enum$Sport);

  Enum$GameFormat get gameFormat => (_$data['gameFormat'] as Enum$GameFormat);

  String? get clubID => (_$data['clubID'] as String?);

  String? get facilityID => (_$data['facilityID'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$date = date;
    result$data['date'] = l$date;
    final l$startTime = startTime;
    result$data['startTime'] = l$startTime;
    final l$endTime = endTime;
    result$data['endTime'] = l$endTime;
    final l$level = level;
    result$data['level'] = toJson$Enum$Level(l$level);
    final l$sport = sport;
    result$data['sport'] = toJson$Enum$Sport(l$sport);
    final l$gameFormat = gameFormat;
    result$data['gameFormat'] = toJson$Enum$GameFormat(l$gameFormat);
    if (_$data.containsKey('clubID')) {
      final l$clubID = clubID;
      result$data['clubID'] = l$clubID;
    }
    if (_$data.containsKey('facilityID')) {
      final l$facilityID = facilityID;
      result$data['facilityID'] = l$facilityID;
    }
    return result$data;
  }

  CopyWith$Input$NewGame<Input$NewGame> get copyWith => CopyWith$Input$NewGame(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NewGame || runtimeType != other.runtimeType) {
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
    final l$level = level;
    final lOther$level = other.level;
    if (l$level != lOther$level) {
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
    final l$clubID = clubID;
    final lOther$clubID = other.clubID;
    if (_$data.containsKey('clubID') != other._$data.containsKey('clubID')) {
      return false;
    }
    if (l$clubID != lOther$clubID) {
      return false;
    }
    final l$facilityID = facilityID;
    final lOther$facilityID = other.facilityID;
    if (_$data.containsKey('facilityID') !=
        other._$data.containsKey('facilityID')) {
      return false;
    }
    if (l$facilityID != lOther$facilityID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$date = date;
    final l$startTime = startTime;
    final l$endTime = endTime;
    final l$level = level;
    final l$sport = sport;
    final l$gameFormat = gameFormat;
    final l$clubID = clubID;
    final l$facilityID = facilityID;
    return Object.hashAll([
      l$date,
      l$startTime,
      l$endTime,
      l$level,
      l$sport,
      l$gameFormat,
      _$data.containsKey('clubID') ? l$clubID : const {},
      _$data.containsKey('facilityID') ? l$facilityID : const {},
    ]);
  }
}

abstract class CopyWith$Input$NewGame<TRes> {
  factory CopyWith$Input$NewGame(
    Input$NewGame instance,
    TRes Function(Input$NewGame) then,
  ) = _CopyWithImpl$Input$NewGame;

  factory CopyWith$Input$NewGame.stub(TRes res) =
      _CopyWithStubImpl$Input$NewGame;

  TRes call({
    String? date,
    int? startTime,
    int? endTime,
    Enum$Level? level,
    Enum$Sport? sport,
    Enum$GameFormat? gameFormat,
    String? clubID,
    String? facilityID,
  });
}

class _CopyWithImpl$Input$NewGame<TRes>
    implements CopyWith$Input$NewGame<TRes> {
  _CopyWithImpl$Input$NewGame(
    this._instance,
    this._then,
  );

  final Input$NewGame _instance;

  final TRes Function(Input$NewGame) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? date = _undefined,
    Object? startTime = _undefined,
    Object? endTime = _undefined,
    Object? level = _undefined,
    Object? sport = _undefined,
    Object? gameFormat = _undefined,
    Object? clubID = _undefined,
    Object? facilityID = _undefined,
  }) =>
      _then(Input$NewGame._({
        ..._instance._$data,
        if (date != _undefined && date != null) 'date': (date as String),
        if (startTime != _undefined && startTime != null)
          'startTime': (startTime as int),
        if (endTime != _undefined && endTime != null)
          'endTime': (endTime as int),
        if (level != _undefined && level != null)
          'level': (level as Enum$Level),
        if (sport != _undefined && sport != null)
          'sport': (sport as Enum$Sport),
        if (gameFormat != _undefined && gameFormat != null)
          'gameFormat': (gameFormat as Enum$GameFormat),
        if (clubID != _undefined) 'clubID': (clubID as String?),
        if (facilityID != _undefined) 'facilityID': (facilityID as String?),
      }));
}

class _CopyWithStubImpl$Input$NewGame<TRes>
    implements CopyWith$Input$NewGame<TRes> {
  _CopyWithStubImpl$Input$NewGame(this._res);

  TRes _res;

  call({
    String? date,
    int? startTime,
    int? endTime,
    Enum$Level? level,
    Enum$Sport? sport,
    Enum$GameFormat? gameFormat,
    String? clubID,
    String? facilityID,
  }) =>
      _res;
}

class Input$FacilityInput {
  factory Input$FacilityInput({
    required String name,
    required Enum$FacilityType type,
    required Enum$Sport sport,
  }) =>
      Input$FacilityInput._({
        r'name': name,
        r'type': type,
        r'sport': sport,
      });

  Input$FacilityInput._(this._$data);

  factory Input$FacilityInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$FacilityType((l$type as String));
    final l$sport = data['sport'];
    result$data['sport'] = fromJson$Enum$Sport((l$sport as String));
    return Input$FacilityInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Enum$FacilityType get type => (_$data['type'] as Enum$FacilityType);

  Enum$Sport get sport => (_$data['sport'] as Enum$Sport);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$type = type;
    result$data['type'] = toJson$Enum$FacilityType(l$type);
    final l$sport = sport;
    result$data['sport'] = toJson$Enum$Sport(l$sport);
    return result$data;
  }

  CopyWith$Input$FacilityInput<Input$FacilityInput> get copyWith =>
      CopyWith$Input$FacilityInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FacilityInput || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$type = type;
    final l$sport = sport;
    return Object.hashAll([
      l$name,
      l$type,
      l$sport,
    ]);
  }
}

abstract class CopyWith$Input$FacilityInput<TRes> {
  factory CopyWith$Input$FacilityInput(
    Input$FacilityInput instance,
    TRes Function(Input$FacilityInput) then,
  ) = _CopyWithImpl$Input$FacilityInput;

  factory CopyWith$Input$FacilityInput.stub(TRes res) =
      _CopyWithStubImpl$Input$FacilityInput;

  TRes call({
    String? name,
    Enum$FacilityType? type,
    Enum$Sport? sport,
  });
}

class _CopyWithImpl$Input$FacilityInput<TRes>
    implements CopyWith$Input$FacilityInput<TRes> {
  _CopyWithImpl$Input$FacilityInput(
    this._instance,
    this._then,
  );

  final Input$FacilityInput _instance;

  final TRes Function(Input$FacilityInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? type = _undefined,
    Object? sport = _undefined,
  }) =>
      _then(Input$FacilityInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (type != _undefined && type != null)
          'type': (type as Enum$FacilityType),
        if (sport != _undefined && sport != null)
          'sport': (sport as Enum$Sport),
      }));
}

class _CopyWithStubImpl$Input$FacilityInput<TRes>
    implements CopyWith$Input$FacilityInput<TRes> {
  _CopyWithStubImpl$Input$FacilityInput(this._res);

  TRes _res;

  call({
    String? name,
    Enum$FacilityType? type,
    Enum$Sport? sport,
  }) =>
      _res;
}

class Input$ClubOpenHoursInput {
  factory Input$ClubOpenHoursInput({
    required String day,
    required int openTime,
    required int closeTime,
    required int minimumBookingInterval,
    String? date,
  }) =>
      Input$ClubOpenHoursInput._({
        r'day': day,
        r'openTime': openTime,
        r'closeTime': closeTime,
        r'minimumBookingInterval': minimumBookingInterval,
        if (date != null) r'date': date,
      });

  Input$ClubOpenHoursInput._(this._$data);

  factory Input$ClubOpenHoursInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$day = data['day'];
    result$data['day'] = (l$day as String);
    final l$openTime = data['openTime'];
    result$data['openTime'] = (l$openTime as int);
    final l$closeTime = data['closeTime'];
    result$data['closeTime'] = (l$closeTime as int);
    final l$minimumBookingInterval = data['minimumBookingInterval'];
    result$data['minimumBookingInterval'] = (l$minimumBookingInterval as int);
    if (data.containsKey('date')) {
      final l$date = data['date'];
      result$data['date'] = (l$date as String?);
    }
    return Input$ClubOpenHoursInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get day => (_$data['day'] as String);

  int get openTime => (_$data['openTime'] as int);

  int get closeTime => (_$data['closeTime'] as int);

  int get minimumBookingInterval => (_$data['minimumBookingInterval'] as int);

  String? get date => (_$data['date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$day = day;
    result$data['day'] = l$day;
    final l$openTime = openTime;
    result$data['openTime'] = l$openTime;
    final l$closeTime = closeTime;
    result$data['closeTime'] = l$closeTime;
    final l$minimumBookingInterval = minimumBookingInterval;
    result$data['minimumBookingInterval'] = l$minimumBookingInterval;
    if (_$data.containsKey('date')) {
      final l$date = date;
      result$data['date'] = l$date;
    }
    return result$data;
  }

  CopyWith$Input$ClubOpenHoursInput<Input$ClubOpenHoursInput> get copyWith =>
      CopyWith$Input$ClubOpenHoursInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ClubOpenHoursInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$day = day;
    final lOther$day = other.day;
    if (l$day != lOther$day) {
      return false;
    }
    final l$openTime = openTime;
    final lOther$openTime = other.openTime;
    if (l$openTime != lOther$openTime) {
      return false;
    }
    final l$closeTime = closeTime;
    final lOther$closeTime = other.closeTime;
    if (l$closeTime != lOther$closeTime) {
      return false;
    }
    final l$minimumBookingInterval = minimumBookingInterval;
    final lOther$minimumBookingInterval = other.minimumBookingInterval;
    if (l$minimumBookingInterval != lOther$minimumBookingInterval) {
      return false;
    }
    final l$date = date;
    final lOther$date = other.date;
    if (_$data.containsKey('date') != other._$data.containsKey('date')) {
      return false;
    }
    if (l$date != lOther$date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$day = day;
    final l$openTime = openTime;
    final l$closeTime = closeTime;
    final l$minimumBookingInterval = minimumBookingInterval;
    final l$date = date;
    return Object.hashAll([
      l$day,
      l$openTime,
      l$closeTime,
      l$minimumBookingInterval,
      _$data.containsKey('date') ? l$date : const {},
    ]);
  }
}

abstract class CopyWith$Input$ClubOpenHoursInput<TRes> {
  factory CopyWith$Input$ClubOpenHoursInput(
    Input$ClubOpenHoursInput instance,
    TRes Function(Input$ClubOpenHoursInput) then,
  ) = _CopyWithImpl$Input$ClubOpenHoursInput;

  factory CopyWith$Input$ClubOpenHoursInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ClubOpenHoursInput;

  TRes call({
    String? day,
    int? openTime,
    int? closeTime,
    int? minimumBookingInterval,
    String? date,
  });
}

class _CopyWithImpl$Input$ClubOpenHoursInput<TRes>
    implements CopyWith$Input$ClubOpenHoursInput<TRes> {
  _CopyWithImpl$Input$ClubOpenHoursInput(
    this._instance,
    this._then,
  );

  final Input$ClubOpenHoursInput _instance;

  final TRes Function(Input$ClubOpenHoursInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? day = _undefined,
    Object? openTime = _undefined,
    Object? closeTime = _undefined,
    Object? minimumBookingInterval = _undefined,
    Object? date = _undefined,
  }) =>
      _then(Input$ClubOpenHoursInput._({
        ..._instance._$data,
        if (day != _undefined && day != null) 'day': (day as String),
        if (openTime != _undefined && openTime != null)
          'openTime': (openTime as int),
        if (closeTime != _undefined && closeTime != null)
          'closeTime': (closeTime as int),
        if (minimumBookingInterval != _undefined &&
            minimumBookingInterval != null)
          'minimumBookingInterval': (minimumBookingInterval as int),
        if (date != _undefined) 'date': (date as String?),
      }));
}

class _CopyWithStubImpl$Input$ClubOpenHoursInput<TRes>
    implements CopyWith$Input$ClubOpenHoursInput<TRes> {
  _CopyWithStubImpl$Input$ClubOpenHoursInput(this._res);

  TRes _res;

  call({
    String? day,
    int? openTime,
    int? closeTime,
    int? minimumBookingInterval,
    String? date,
  }) =>
      _res;
}

class Input$NewClub {
  factory Input$NewClub({
    required String name,
    required String address,
    required String city,
    required List<Input$ClubOpenHoursInput> openHours,
    required List<Input$FacilityInput> facilities,
  }) =>
      Input$NewClub._({
        r'name': name,
        r'address': address,
        r'city': city,
        r'openHours': openHours,
        r'facilities': facilities,
      });

  Input$NewClub._(this._$data);

  factory Input$NewClub.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$address = data['address'];
    result$data['address'] = (l$address as String);
    final l$city = data['city'];
    result$data['city'] = (l$city as String);
    final l$openHours = data['openHours'];
    result$data['openHours'] = (l$openHours as List<dynamic>)
        .map((e) =>
            Input$ClubOpenHoursInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$facilities = data['facilities'];
    result$data['facilities'] = (l$facilities as List<dynamic>)
        .map((e) => Input$FacilityInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Input$NewClub._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get address => (_$data['address'] as String);

  String get city => (_$data['city'] as String);

  List<Input$ClubOpenHoursInput> get openHours =>
      (_$data['openHours'] as List<Input$ClubOpenHoursInput>);

  List<Input$FacilityInput> get facilities =>
      (_$data['facilities'] as List<Input$FacilityInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$address = address;
    result$data['address'] = l$address;
    final l$city = city;
    result$data['city'] = l$city;
    final l$openHours = openHours;
    result$data['openHours'] = l$openHours.map((e) => e.toJson()).toList();
    final l$facilities = facilities;
    result$data['facilities'] = l$facilities.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Input$NewClub<Input$NewClub> get copyWith => CopyWith$Input$NewClub(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NewClub || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$openHours = openHours;
    final lOther$openHours = other.openHours;
    if (l$openHours.length != lOther$openHours.length) {
      return false;
    }
    for (int i = 0; i < l$openHours.length; i++) {
      final l$openHours$entry = l$openHours[i];
      final lOther$openHours$entry = lOther$openHours[i];
      if (l$openHours$entry != lOther$openHours$entry) {
        return false;
      }
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
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$address = address;
    final l$city = city;
    final l$openHours = openHours;
    final l$facilities = facilities;
    return Object.hashAll([
      l$name,
      l$address,
      l$city,
      Object.hashAll(l$openHours.map((v) => v)),
      Object.hashAll(l$facilities.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$NewClub<TRes> {
  factory CopyWith$Input$NewClub(
    Input$NewClub instance,
    TRes Function(Input$NewClub) then,
  ) = _CopyWithImpl$Input$NewClub;

  factory CopyWith$Input$NewClub.stub(TRes res) =
      _CopyWithStubImpl$Input$NewClub;

  TRes call({
    String? name,
    String? address,
    String? city,
    List<Input$ClubOpenHoursInput>? openHours,
    List<Input$FacilityInput>? facilities,
  });
  TRes openHours(
      Iterable<Input$ClubOpenHoursInput> Function(
              Iterable<
                  CopyWith$Input$ClubOpenHoursInput<Input$ClubOpenHoursInput>>)
          _fn);
  TRes facilities(
      Iterable<Input$FacilityInput> Function(
              Iterable<CopyWith$Input$FacilityInput<Input$FacilityInput>>)
          _fn);
}

class _CopyWithImpl$Input$NewClub<TRes>
    implements CopyWith$Input$NewClub<TRes> {
  _CopyWithImpl$Input$NewClub(
    this._instance,
    this._then,
  );

  final Input$NewClub _instance;

  final TRes Function(Input$NewClub) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? address = _undefined,
    Object? city = _undefined,
    Object? openHours = _undefined,
    Object? facilities = _undefined,
  }) =>
      _then(Input$NewClub._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (address != _undefined && address != null)
          'address': (address as String),
        if (city != _undefined && city != null) 'city': (city as String),
        if (openHours != _undefined && openHours != null)
          'openHours': (openHours as List<Input$ClubOpenHoursInput>),
        if (facilities != _undefined && facilities != null)
          'facilities': (facilities as List<Input$FacilityInput>),
      }));

  TRes openHours(
          Iterable<Input$ClubOpenHoursInput> Function(
                  Iterable<
                      CopyWith$Input$ClubOpenHoursInput<
                          Input$ClubOpenHoursInput>>)
              _fn) =>
      call(
          openHours: _fn(
              _instance.openHours.map((e) => CopyWith$Input$ClubOpenHoursInput(
                    e,
                    (i) => i,
                  ))).toList());

  TRes facilities(
          Iterable<Input$FacilityInput> Function(
                  Iterable<CopyWith$Input$FacilityInput<Input$FacilityInput>>)
              _fn) =>
      call(
          facilities:
              _fn(_instance.facilities.map((e) => CopyWith$Input$FacilityInput(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Input$NewClub<TRes>
    implements CopyWith$Input$NewClub<TRes> {
  _CopyWithStubImpl$Input$NewClub(this._res);

  TRes _res;

  call({
    String? name,
    String? address,
    String? city,
    List<Input$ClubOpenHoursInput>? openHours,
    List<Input$FacilityInput>? facilities,
  }) =>
      _res;

  openHours(_fn) => _res;

  facilities(_fn) => _res;
}

class Input$NewPlayer {
  factory Input$NewPlayer({
    required String name,
    required String email,
    String? phone,
  }) =>
      Input$NewPlayer._({
        r'name': name,
        r'email': email,
        if (phone != null) r'phone': phone,
      });

  Input$NewPlayer._(this._$data);

  factory Input$NewPlayer.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    if (data.containsKey('phone')) {
      final l$phone = data['phone'];
      result$data['phone'] = (l$phone as String?);
    }
    return Input$NewPlayer._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String? get phone => (_$data['phone'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    if (_$data.containsKey('phone')) {
      final l$phone = phone;
      result$data['phone'] = l$phone;
    }
    return result$data;
  }

  CopyWith$Input$NewPlayer<Input$NewPlayer> get copyWith =>
      CopyWith$Input$NewPlayer(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$NewPlayer || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$phone = phone;
    final lOther$phone = other.phone;
    if (_$data.containsKey('phone') != other._$data.containsKey('phone')) {
      return false;
    }
    if (l$phone != lOther$phone) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$phone = phone;
    return Object.hashAll([
      l$name,
      l$email,
      _$data.containsKey('phone') ? l$phone : const {},
    ]);
  }
}

abstract class CopyWith$Input$NewPlayer<TRes> {
  factory CopyWith$Input$NewPlayer(
    Input$NewPlayer instance,
    TRes Function(Input$NewPlayer) then,
  ) = _CopyWithImpl$Input$NewPlayer;

  factory CopyWith$Input$NewPlayer.stub(TRes res) =
      _CopyWithStubImpl$Input$NewPlayer;

  TRes call({
    String? name,
    String? email,
    String? phone,
  });
}

class _CopyWithImpl$Input$NewPlayer<TRes>
    implements CopyWith$Input$NewPlayer<TRes> {
  _CopyWithImpl$Input$NewPlayer(
    this._instance,
    this._then,
  );

  final Input$NewPlayer _instance;

  final TRes Function(Input$NewPlayer) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? phone = _undefined,
  }) =>
      _then(Input$NewPlayer._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (phone != _undefined) 'phone': (phone as String?),
      }));
}

class _CopyWithStubImpl$Input$NewPlayer<TRes>
    implements CopyWith$Input$NewPlayer<TRes> {
  _CopyWithStubImpl$Input$NewPlayer(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? phone,
  }) =>
      _res;
}

class Input$JoinGameInput {
  factory Input$JoinGameInput({
    required String teamID,
    required String playerID,
  }) =>
      Input$JoinGameInput._({
        r'teamID': teamID,
        r'playerID': playerID,
      });

  Input$JoinGameInput._(this._$data);

  factory Input$JoinGameInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$teamID = data['teamID'];
    result$data['teamID'] = (l$teamID as String);
    final l$playerID = data['playerID'];
    result$data['playerID'] = (l$playerID as String);
    return Input$JoinGameInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get teamID => (_$data['teamID'] as String);

  String get playerID => (_$data['playerID'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$teamID = teamID;
    result$data['teamID'] = l$teamID;
    final l$playerID = playerID;
    result$data['playerID'] = l$playerID;
    return result$data;
  }

  CopyWith$Input$JoinGameInput<Input$JoinGameInput> get copyWith =>
      CopyWith$Input$JoinGameInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$JoinGameInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$teamID = teamID;
    final lOther$teamID = other.teamID;
    if (l$teamID != lOther$teamID) {
      return false;
    }
    final l$playerID = playerID;
    final lOther$playerID = other.playerID;
    if (l$playerID != lOther$playerID) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$teamID = teamID;
    final l$playerID = playerID;
    return Object.hashAll([
      l$teamID,
      l$playerID,
    ]);
  }
}

abstract class CopyWith$Input$JoinGameInput<TRes> {
  factory CopyWith$Input$JoinGameInput(
    Input$JoinGameInput instance,
    TRes Function(Input$JoinGameInput) then,
  ) = _CopyWithImpl$Input$JoinGameInput;

  factory CopyWith$Input$JoinGameInput.stub(TRes res) =
      _CopyWithStubImpl$Input$JoinGameInput;

  TRes call({
    String? teamID,
    String? playerID,
  });
}

class _CopyWithImpl$Input$JoinGameInput<TRes>
    implements CopyWith$Input$JoinGameInput<TRes> {
  _CopyWithImpl$Input$JoinGameInput(
    this._instance,
    this._then,
  );

  final Input$JoinGameInput _instance;

  final TRes Function(Input$JoinGameInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teamID = _undefined,
    Object? playerID = _undefined,
  }) =>
      _then(Input$JoinGameInput._({
        ..._instance._$data,
        if (teamID != _undefined && teamID != null)
          'teamID': (teamID as String),
        if (playerID != _undefined && playerID != null)
          'playerID': (playerID as String),
      }));
}

class _CopyWithStubImpl$Input$JoinGameInput<TRes>
    implements CopyWith$Input$JoinGameInput<TRes> {
  _CopyWithStubImpl$Input$JoinGameInput(this._res);

  TRes _res;

  call({
    String? teamID,
    String? playerID,
  }) =>
      _res;
}

enum Enum$FacilityType {
  COURT,
  $unknown;

  factory Enum$FacilityType.fromJson(String value) =>
      fromJson$Enum$FacilityType(value);

  String toJson() => toJson$Enum$FacilityType(this);
}

String toJson$Enum$FacilityType(Enum$FacilityType e) {
  switch (e) {
    case Enum$FacilityType.COURT:
      return r'COURT';
    case Enum$FacilityType.$unknown:
      return r'$unknown';
  }
}

Enum$FacilityType fromJson$Enum$FacilityType(String value) {
  switch (value) {
    case r'COURT':
      return Enum$FacilityType.COURT;
    default:
      return Enum$FacilityType.$unknown;
  }
}

enum Enum$Sport {
  TENNIS,
  PADEL,
  $unknown;

  factory Enum$Sport.fromJson(String value) => fromJson$Enum$Sport(value);

  String toJson() => toJson$Enum$Sport(this);
}

String toJson$Enum$Sport(Enum$Sport e) {
  switch (e) {
    case Enum$Sport.TENNIS:
      return r'TENNIS';
    case Enum$Sport.PADEL:
      return r'PADEL';
    case Enum$Sport.$unknown:
      return r'$unknown';
  }
}

Enum$Sport fromJson$Enum$Sport(String value) {
  switch (value) {
    case r'TENNIS':
      return Enum$Sport.TENNIS;
    case r'PADEL':
      return Enum$Sport.PADEL;
    default:
      return Enum$Sport.$unknown;
  }
}

enum Enum$GameFormat {
  SINGLES,
  DOUBLES,
  $unknown;

  factory Enum$GameFormat.fromJson(String value) =>
      fromJson$Enum$GameFormat(value);

  String toJson() => toJson$Enum$GameFormat(this);
}

String toJson$Enum$GameFormat(Enum$GameFormat e) {
  switch (e) {
    case Enum$GameFormat.SINGLES:
      return r'SINGLES';
    case Enum$GameFormat.DOUBLES:
      return r'DOUBLES';
    case Enum$GameFormat.$unknown:
      return r'$unknown';
  }
}

Enum$GameFormat fromJson$Enum$GameFormat(String value) {
  switch (value) {
    case r'SINGLES':
      return Enum$GameFormat.SINGLES;
    case r'DOUBLES':
      return Enum$GameFormat.DOUBLES;
    default:
      return Enum$GameFormat.$unknown;
  }
}

enum Enum$Level {
  BEGINNER,
  INTERMEDIATE,
  ADVANCED,
  $unknown;

  factory Enum$Level.fromJson(String value) => fromJson$Enum$Level(value);

  String toJson() => toJson$Enum$Level(this);
}

String toJson$Enum$Level(Enum$Level e) {
  switch (e) {
    case Enum$Level.BEGINNER:
      return r'BEGINNER';
    case Enum$Level.INTERMEDIATE:
      return r'INTERMEDIATE';
    case Enum$Level.ADVANCED:
      return r'ADVANCED';
    case Enum$Level.$unknown:
      return r'$unknown';
  }
}

Enum$Level fromJson$Enum$Level(String value) {
  switch (value) {
    case r'BEGINNER':
      return Enum$Level.BEGINNER;
    case r'INTERMEDIATE':
      return Enum$Level.INTERMEDIATE;
    case r'ADVANCED':
      return Enum$Level.ADVANCED;
    default:
      return Enum$Level.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
