import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/flora_services.dart';

part 'flora_navigator_event.dart';
part 'flora_navigator_state.dart';
part 'flora_navigator_bloc.freezed.dart';

// Another approach: to emit a state something like 'navigateTo(page)':
// emit(const FloraNavigatorState.navigateTo('/birthdaySelector'));
// and process its in BlocListener

class FloraNavigatorBloc
    extends Bloc<FloraNavigatorEvent, FloraNavigatorState> {
  FloraNavigatorBloc(this._navigatorKey)
      : super(FloraNavigatorState.initial()) {
    on<FloraNavigatorEvent>((event, emit) {
      event.when(
        serviceSelected: (service) {
          emit(state.copyWith(service: service));
          _navigatorKey.currentState?.pushNamed('/birthdaySelector');
        },
        yearEntered: (year) {
          emit(state.copyWith(year: year));
          _navigatorKey.currentState?.pushNamed('/summary');
        },
      );
    });
  }

  final GlobalKey<NavigatorState> _navigatorKey;
}
