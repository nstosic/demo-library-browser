import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

enum FilterOperator {
  op_eq,
  op_ne,
  op_in,
  op_gt,
  op_lt,
  op_le,
  op_ge,
}

@immutable
class FilterStrategy {
  const FilterStrategy({
    required this.field,
    required this.operator,
    required this.value,
  });

  final String field;
  final FilterOperator operator;
  final String value;

  @override
  String toString() {
    return 'filter[$field][${describeEnum(operator).substring(3)}]=$value';
  }
}
