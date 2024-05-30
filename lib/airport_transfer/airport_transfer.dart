import 'package:ride/exports.dart';

class AirportTransferContainer extends StatelessWidget {
  const AirportTransferContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(7, 5, 7, 0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Consumer(
                    builder: (BuildContext context,
                        WidgetRef ref, Widget? child) {
                      final containerColorOneWayTrip =
                          ref.watch(
                              containercolorLeftProvider);
                      final containerColorRoundTrip =
                          ref.watch(
                              containercolorRightProvider);
                      final textColorOneWay = ref
                          .watch(textcolorLeftProvider);
                      final textColorRoundTrip = ref
                          .watch(textcolorRightProvider);
                      final dividercolorOneWayTrip =
                          ref.watch(
                              dividercolorLeftProvider);
                      final dividercolorRoundTrip = ref.watch(
                          dividercolorRightProvider);
    
                      return Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              margin:
                                  EdgeInsets.only(right: 10),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    20, 10, 20, 0),
                                decoration: BoxDecoration(
                                    color:
                                        containerColorOneWayTrip,
                                    borderRadius:
                                        BorderRadius.only(
                                            topLeft: Radius
                                                .circular(20),
                                            topRight: Radius
                                                .circular(
                                                    20))),
                                child: Column(
                                  children: [
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          ref
                                              .read(containercolorLeftProvider
                                                  .notifier)
                                              .state = Colors.white;
                                          ref
                                              .read(textcolorLeftProvider
                                                  .notifier)
                                              .state = Colors.green;
    
                                          ref
                                                  .read(containercolorRightProvider
                                                      .notifier)
                                                  .state =
                                              Color.fromARGB(
                                                  217,
                                                  16,
                                                  16,
                                                  16);
                                          ref
                                              .read(textcolorRightProvider
                                                  .notifier)
                                              .state = Colors.white;
    
                                          ref
                                                  .read(dividercolorRightProvider
                                                      .notifier)
                                                  .state =
                                              Color.fromARGB(
                                                  217,
                                                  16,
                                                  16,
                                                  16);
                                          ref
                                              .read(dividercolorLeftProvider
                                                  .notifier)
                                              .state = Colors.green;
    
                                          ref
                                              .read(containerProvider
                                                  .notifier)
                                              .changeContainer(
                                                from_airport(),
                                              );
                                        },
                                        child: Text(
                                          'From Airport',
                                          style: GoogleFonts
                                              .getFont(
                                            'Poppins',
                                            fontWeight:
                                                FontWeight
                                                    .w500,
                                            fontSize: 16,
                                            height: 1.5,
                                            wordSpacing: -2,
                                            color:
                                                textColorOneWay,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 4,
                                      margin: EdgeInsets
                                          .symmetric(
                                              vertical: 3),
                                      decoration:
                                          BoxDecoration(
                                        color:
                                            dividercolorOneWayTrip,
                                        borderRadius:
                                            BorderRadius
                                                .circular(5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: 10),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    20, 10, 20, 0),
                                decoration: BoxDecoration(
                                    color:
                                        containerColorRoundTrip,
                                    borderRadius:
                                        BorderRadius.only(
                                            topLeft: Radius
                                                .circular(20),
                                            topRight: Radius
                                                .circular(
                                                    20))),
                                child: Column(
                                  children: [
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {
                                          ref
                                                  .read(containercolorLeftProvider
                                                      .notifier)
                                                  .state =
                                              Color.fromARGB(
                                                  217,
                                                  16,
                                                  16,
                                                  16);
                                          ref
                                              .read(textcolorLeftProvider
                                                  .notifier)
                                              .state = Colors.white;
    
                                          ref
                                              .read(containercolorRightProvider
                                                  .notifier)
                                              .state = Colors.white;
                                          ref
                                              .read(textcolorRightProvider
                                                  .notifier)
                                              .state = Colors.green;
    
                                          ref
                                              .read(dividercolorRightProvider
                                                  .notifier)
                                              .state = Colors.green;
                                          ref
                                                  .read(dividercolorLeftProvider
                                                      .notifier)
                                                  .state =
                                              Color.fromARGB(
                                                  217,
                                                  16,
                                                  16,
                                                  16);
                                          ref
                                              .read(containerProvider
                                                  .notifier)
                                              .changeContainer(
                                                to_airport(),
                                              );
                                        },
                                        child: Text(
                                          'To Airport ',
                                          style: GoogleFonts
                                              .getFont(
                                            'Poppins',
                                            fontWeight:
                                                FontWeight
                                                    .w500,
                                            fontSize: 16,
                                            height: 1.5,
                                            wordSpacing: -2,
                                            color:
                                                textColorRoundTrip,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 4,
                                      margin: EdgeInsets
                                          .symmetric(
                                              vertical: 3),
                                      decoration:
                                          BoxDecoration(
                                        color:
                                            dividercolorRoundTrip,
                                        borderRadius:
                                            BorderRadius
                                                .circular(5),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Container(
                child: Consumer(
                  builder: (BuildContext context,
                      WidgetRef ref, Widget? child) {
                    final container = ref
                        .watch(containerProvider)
                        .updateContainer;
                    return container;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
 
  }
}