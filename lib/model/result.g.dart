// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Result> _$resultSerializer = new _$ResultSerializer();

class _$ResultSerializer implements StructuredSerializer<Result> {
  @override
  final Iterable<Type> types = const [Result, _$Result];
  @override
  final String wireName = 'Result';

  @override
  Iterable<Object> serialize(Serializers serializers, Result object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Userr)])));
    }
    return result;
  }

  @override
  Result deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Userr)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Result extends Result {
  @override
  final BuiltList<Userr> results;

  factory _$Result([void Function(ResultBuilder) updates]) =>
      (new ResultBuilder()..update(updates)).build();

  _$Result._({this.results}) : super._();

  @override
  Result rebuild(void Function(ResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultBuilder toBuilder() => new ResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Result && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Result')..add('results', results))
        .toString();
  }
}

class ResultBuilder implements Builder<Result, ResultBuilder> {
  _$Result _$v;

  ListBuilder<Userr> _results;
  ListBuilder<Userr> get results =>
      _$this._results ??= new ListBuilder<Userr>();
  set results(ListBuilder<Userr> results) => _$this._results = results;

  ResultBuilder();

  ResultBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Result other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Result;
  }

  @override
  void update(void Function(ResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Result build() {
    _$Result _$result;
    try {
      _$result = _$v ?? new _$Result._(results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Result', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
