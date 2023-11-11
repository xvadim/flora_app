part of 'flora_navigator_bloc.dart';

@freezed
class FloraNavigatorState with _$FloraNavigatorState {
  factory FloraNavigatorState({
    FloraService? service,
    int? year,
  }) = _FloraNavigatorState;

  factory FloraNavigatorState.initial() => FloraNavigatorState();
}
