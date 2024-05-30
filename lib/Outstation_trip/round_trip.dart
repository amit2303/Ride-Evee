import 'package:ride/exports.dart';

class RoundTrip extends StatelessWidget {
  const RoundTrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(7, 0, 7, 5),
      width: double.maxFinite,
      height: 400,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
          bottomLeft: Radius.circular(25),
        ),
      ),
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Color(0xffD5F2C8),
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 45),
                      child: Image.asset(
                        'assets/images/pick_up.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pick-up City",
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF38B000),
                            ),
                          ),
                          Text(
                            'Faizabad, Utter Pradesh',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.close)),
                  ],
                ),
              ),
            ),
            Card(
              color: Color(0xffD5F2C8),
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 45),
                      child: SvgPicture.asset(
                        'assets/vectors/destination.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Destination",
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF38B000),
                            ),
                          ),
                          Text(
                            'Lucknow, Utter Pradesh',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Icon(Icons.add)),
                  ],
                ),
              ),
            ),
            Card(
              color: Color(0xffD5F2C8),
              elevation: 4,
              margin: EdgeInsets.all(8),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 45),
                      child: SvgPicture.asset(
                        'assets/vectors/time_reverse.svg',
                        width: 30,
                        height: 30,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Time",
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF38B000),
                            ),
                          ),
                          Text(
                            '04:45 PM',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(9, 0, 6.7, 5),
                            child: Text(
                              'From Date',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color(0xFF38B000),
                              ),
                            ),
                          ),
                          Text(
                            '28/09/2023',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.fromLTRB(0, 0, 18, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFD5F2C8),
                          borderRadius: BorderRadius.circular(25.5),
                        ),
                        child: Container(
                          width: 51,
                          height: 51,
                          padding: EdgeInsets.fromLTRB(11, 11, 10, 10),
                          child: Container(
                            width: 30,
                            height: 30,
                            child: SizedBox(
                              width: 30,
                              height: 30,
                              child: SvgPicture.asset(
                        'assets/vectors/calendar.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(13, 0, 13, 4),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'To Date',
                                style: GoogleFonts.getFont(
                                  'Roboto',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color(0xFF38B000),
                                ),
                              ),
                            ),
                          ),
                          Text(
                            '29/09/2023',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFF38B000),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  width: 200,
                  padding: EdgeInsets.fromLTRB(0, 12, 0.5, 12),
                  child: Center(
                    child: Text(
                      'Explore Cabs',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
