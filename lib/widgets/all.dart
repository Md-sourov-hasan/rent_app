import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';

class All extends StatefulWidget {
  const All({super.key});

  @override
  State<All> createState() => _AllState();
}

class _AllState extends State<All> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF0FDF4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/png/paid_icon.png',
                        height: 12,
                        width: 12,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Paid rent',
                        style: TextStyle(color: Color(0xff00aa8e)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Sunset Apartments A-301',
              style: TextStyle(color: Color(0xffa4a4a4)),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 4,
                      decoration: BoxDecoration(
                        color: Color(0xfff54900),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Sarah Johnson',
                      style: TextStyle(
                        color: Color(0xff1c1c1c),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xfffeede6),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Center(
                        child: Text(
                          'Maintenance request',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xfff54900),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'Oak Street Villa',
                    style: TextStyle(color: Color(0xffa4a4a4)),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 4,
                      decoration: BoxDecoration(
                        color: AllColors.primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Mike Brown',
                      style: TextStyle(
                        color: Color(0xff1c1c1c),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Container(
                    height: 30,
                    width: 110,
                    decoration: BoxDecoration(
                      color: Color(0xffe8efff),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 3),
                      child: Center(
                        child: Text(
                          'Lease renewal',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff166cfc),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    'City View Studio 12B',
                    style: TextStyle(color: Color(0xffa4a4a4)),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
