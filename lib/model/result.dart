
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pyco_test_vl/model/userr.dart';

part 'result.g.dart';

abstract class Result implements Built<Result, ResultBuilder> {

  @nullable
  @BuiltValueField(wireName: 'results')
  BuiltList<Userr> get results;

  Result._();

  factory Result([updates(ResultBuilder builder)]) = _$Result;

  static Serializer<Result> get serializer => _$resultSerializer;
}
