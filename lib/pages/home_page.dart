import 'package:ride/exports.dart';




class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    double screenHeight =screenSize.height;
    double screenWidth =screenSize.width;
    
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
    
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 220,
                              height: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/logo.jpeg',
                                    ),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              margin: edgeInsets,
                              width: 38,
                              height: 38,
                              child: SvgPicture.asset(
                                'assets/vectors/bell.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
    
                    Container(
                      margin: edgeInsets,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'India’s Leading \nOne Way Inter-City \nCab Service Provider',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 19,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
    
                    Consumer(
                      builder: (BuildContext context, WidgetRef ref,
                          Widget? child) {
                        var sliderIndex = ref.watch(sliderIndexProvider);
                        return Container(
                          margin: edgeInsets,
                          width: double.maxFinite,
                          height: 132,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CarouselSlider.builder(
                                  itemCount: 4,
                                  itemBuilder: (context, index, realIndex) =>
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                              'assets/images/banner.jpeg',
                                            ),
                                          ),
                                        ),
                                      ),
                                  options: CarouselOptions(
                                    enableInfiniteScroll: false,
                                    height: 132,
                                    autoPlay: true,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      ref
                                          .read(sliderIndexProvider.notifier)
                                          .state = index;
                                    },
                                  )),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  height: 10,
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: AnimatedSmoothIndicator(
                                    activeIndex: sliderIndex,
                                    count: 4,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 6,
                                        activeDotColor: Colors.green,
                                        dotColor: Colors.white,
                                        dotHeight: 8,
                                        dotWidth: 8),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
    
                    Container(
                      margin: edgeInsets,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Consumer(
                          builder: (BuildContext context, WidgetRef ref,
                              Widget? child) {
                            final updateColorOutstation =
                                ref.watch(colorProviderOutstation);
                            final updateColorLocal =
                                ref.watch(colorProviderlocal);
                            final updateColorAirport =
                                ref.watch(colorProviderAirport);
                            return Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(right: 3),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            ref.read(colorProviderOutstation.notifier).state = Colors.green;
                                            ref.read(colorProviderlocal.notifier).state = Colors.black;
                                            ref.read(colorProviderAirport.notifier).state = Colors.black;
    
    
                                            ref.read(tripcontainerProvider.notifier).changeTripContainer(OutStationTripContainer());
                                            ref.read(containerProvider.notifier).changeContainer(OneWayTrip());

                                          },
                                          icon: Column(
                                            children: [
                                              Container(
                                                height: 50,
                                                child: Image.asset(
                                                  'assets/images/outstation_trip.png',
                                                  color:
                                                      updateColorOutstation,
                                                ),
                                              ),
                                              Text(
                                                'Outstation trip',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color:
                                                      updateColorOutstation,
                                                ),
                                              ),
                                            ],
                                          ))),
                                ),
                                Expanded(
                                  child: Container(
                                      margin:
                                          EdgeInsets.only(left: 3, right: 3),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            ref.read(colorProviderOutstation.notifier).state = Colors.black;
                                            ref.read(colorProviderlocal.notifier).state = Colors.green;
                                            ref.read(colorProviderAirport.notifier).state = Colors.black;
    
    
                                            ref.read(tripcontainerProvider.notifier).changeTripContainer(LocalTripContainer());
                                            ref.read(containerProvider.notifier).changeContainer(eight_hours());
                                           
                                          },
                                          icon: Column(
                                            children: [
                                              Container(
                                                height: 50,
                                                child: Image.asset(
                                                  'assets/images/local_trip.png',
                                                  color: updateColorLocal,
                                                ),
                                              ),
                                              Text(
                                                'Local Trip',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: updateColorLocal,
                                                ),
                                              ),
                                            ],
                                          ))),
                                ),
                                Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(left: 3),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x40FFFFFF),
                                            offset: Offset(0, 4),
                                            blurRadius: 5,
                                          ),
                                        ],
                                      ),
                                      child: IconButton(
                                          onPressed: () {
                                            ref.read(colorProviderOutstation.notifier).state = Colors.black;
                                            ref.read(colorProviderlocal.notifier).state = Colors.black;
                                            ref.read(colorProviderAirport.notifier).state = Colors.green;
    
    
                                            ref.read(tripcontainerProvider.notifier).changeTripContainer(AirportTransferContainer());
                                            ref.read(containerProvider.notifier).changeContainer(from_airport());
                                          
                                          },
                                          icon: Column(
                                            children: [
                                              Container(
                                                height: 50,
                                                child: Image.asset(
                                                  'assets/images/airport_transfer.png',
                                                  color: updateColorAirport,
                                                ),
                                              ),
                                              Text(
                                                'Airport transfer',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12,
                                                  color: updateColorAirport,
                                                ),
                                              ),
                                            ],
                                          ))),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
    
                    Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
                      final tripContainer = ref.watch(tripcontainerProvider).updateTripContainer;
                      return tripContainer;
    
                     },
                    ),
                                Container(
            margin: edgeInsets,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/images/map.png',
                  ),
                ),
              ),
              child: Container(
                width: 398,
                height: 180,
              ),
            ),
          ),
                    
                  ],
                ),
                
              ],
              
            ),
          ),
    
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}








