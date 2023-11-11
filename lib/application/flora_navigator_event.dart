part of 'flora_navigator_bloc.dart';

@freezed
class FloraNavigatorEvent with _$FloraNavigatorEvent {
  const factory FloraNavigatorEvent.serviceSelected(FloraService service) =
      _ServiceSelected;
  const factory FloraNavigatorEvent.yearEntered(int year) = _YearEntered;
}
