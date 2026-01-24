import 'package:flutter/material.dart';

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
                    color: Color(0xffF0FDF4)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/png/paid_icon.png',
                      height: 12,
                      width: 12,
                      ),
                      SizedBox(width: 5,),
                      Text('Paid rent',
                      style: TextStyle(
                        color: Color(0xff00aa8e)
                      ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(width: 10,),
          Text('Sunset Apartments A-301')
          
        ],
      ),
    );
          
       

  }
}