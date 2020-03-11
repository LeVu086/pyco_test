// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserInfoName> _$userInfoNameSerializer =
    new _$UserInfoNameSerializer();

class _$UserInfoNameSerializer implements StructuredSerializer<UserInfoName> {
  @override
  final Iterable<Type> types = const [UserInfoName, _$UserInfoName];
  @override
  final String wireName = 'UserInfoName';

  @override
  Iterable<Object> serialize(Serializers serializers, UserInfoName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.first != null) {
      result
        ..add('first')
        ..add(serializers.serialize(object.first,
            specifiedType: const FullType(String)));
    }
    if (object.last != null) {
      result
        ..add('last')
        ..add(serializers.serialize(object.last,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserInfoName deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserInfoNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserInfoName extends UserInfoName {
  @override
  final String title;
  @override
  final String first;
  @override
  final String last;

  factory _$UserInfoName([void Function(UserInfoNameBuilder) updates]) =>
      (new UserInfoNameBuilder()..update(updates)).build();

  _$UserInfoName._({this.title, this.first, this.last}) : super._();

  @override
  UserInfoName rebuild(void Function(UserInfoNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoNameBuilder toBuilder() => new UserInfoNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoName &&
        title == other.title &&
        first == other.first &&
        last == other.last;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, title.hashCode), first.hashCode), last.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserInfoName')
          ..add('title', title)
          ..add('first', first)
          ..add('last', last))
        .toString();
  }
}

class UserInfoNameBuilder
    implements Builder<UserInfoName, UserInfoNameBuilder> {
  _$UserInfoName _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _first;
  String get first => _$this._first;
  set first(String first) => _$this._first = first;

  String _last;
  String get last => _$this._last;
  set last(String last) => _$this._last = last;

  UserInfoNameBuilder();

  UserInfoNameBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _first = _$v.first;
      _last = _$v.last;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoName other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserInfoName;
  }

  @override
  void update(void Function(UserInfoNameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserInfoName build() {
    final _$result =
        _$v ?? new _$UserInfoName._(title: title, first: first, last: last);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
