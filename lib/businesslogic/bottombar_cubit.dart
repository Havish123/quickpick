import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'bottombar_state.dart';

enum BottomBar_event {
  first,
  secone,
  third,
  fourth,
}

class BottombarCubit extends Cubit<BottombarState> {
  BottombarCubit() : super(BottombarState(selectedIndex: 0));

  void first() => emit(BottombarState(selectedIndex: 0));
  void second() => emit(BottombarState(selectedIndex: 1));
  void third() => emit(BottombarState(selectedIndex: 2));
  void fourth() => emit(BottombarState(selectedIndex: 3));
}

class LocationCubit extends Cubit<Location_State> {
  LocationCubit() : super(Location_State(st: LatLng(0, 0)));

  void getcurrentLocation() async {
    Position res = await Geolocator.getCurrentPosition();
    emit(Location_State(st: LatLng(res.latitude, res.longitude)));
  }
}
