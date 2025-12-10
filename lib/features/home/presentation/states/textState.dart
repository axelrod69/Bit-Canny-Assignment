import 'package:freezed_annotation/freezed_annotation.dart';

part 'textState.freezed.dart';

@freezed
abstract class TextState with _$TextState {
  factory TextState({
    String? amount
  }) = _TextState;

  factory TextState.initial() => TextState(amount: '0');
}