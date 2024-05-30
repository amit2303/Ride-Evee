import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ride/Outstation_trip/oneway_trip.dart';
import 'package:ride/Outstation_trip/outstation_trip.dart';

final sliderIndexProvider = StateProvider<int>((ref) => 0);

final colorProviderOutstation = StateProvider<Color>((ref) => Color(0xff38B000));
final colorProviderlocal = StateProvider<Color>((ref) => Colors.black);
final colorProviderAirport = StateProvider<Color>((ref) => Colors.black);



final selectedIndexProvider = StateProvider<int>((ref) => 0);


final containercolorLeftProvider =
    StateProvider((ref) => Color(0xffFFFFFF));

final containercolorRightProvider =
    StateProvider((ref) => Color.fromARGB(217, 16, 16, 16));

final textcolorLeftProvider = StateProvider((ref) => Color(0xff38B000));

final textcolorRightProvider = StateProvider((ref) => Colors.white);


final dividercolorLeftProvider =
    StateProvider((ref) => Color(0xff38B000));


final dividercolorRightProvider =
    StateProvider((ref) => Color.fromARGB(217, 16, 16, 16));

final containerProvider =
    StateNotifierProvider<ContainerNotifier, ContainerUpdates>(
        (ref) => ContainerNotifier());
final tripcontainerProvider =
    StateNotifierProvider<TripContainerNotifier, TripContainerUpdates>(
        (ref) => TripContainerNotifier());

class ContainerUpdates {
  final Widget updateContainer;
  ContainerUpdates(this.updateContainer);
}

class ContainerNotifier extends StateNotifier<ContainerUpdates> {
  ContainerNotifier() : super(ContainerUpdates(OneWayTrip()));

  void changeContainer(Widget s) {
    state = ContainerUpdates(s);
  }
}

class TripContainerUpdates {
  final Widget updateTripContainer;
  TripContainerUpdates(this.updateTripContainer);
}

class TripContainerNotifier extends StateNotifier<TripContainerUpdates> {
  TripContainerNotifier()
      : super(TripContainerUpdates(OutStationTripContainer()));

  void changeTripContainer(Widget s) {
    state = TripContainerUpdates(s);
  }

  
}



