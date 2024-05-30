import 'package:ride/exports.dart';
import 'package:ride/pages/home_page.dart';

class eight_hours extends StatelessWidget {
  const eight_hours({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(7, 0, 7, 5),
      width: ScreenSize.screenWidth,
      height: 400,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
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
                        'assets/vectors/calendar.svg',
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
                            "Pick-up Date",
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF38B000),
                            ),
                          ),
                          Text(
                            '20/10/2023',
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