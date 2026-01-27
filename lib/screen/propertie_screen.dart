import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';
import 'package:rent_app/screen/home_screen.dart';

class PropertieScreen extends StatelessWidget {
  const PropertieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                height: MediaQuery.sizeOf(context).height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AllColors.secondaryColor,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 1,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/png/a_one.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 16,
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xff4c4449).withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    'Apartment',
                                    style: TextStyle(
                                      color: AllColors.secondaryColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xff00aa8e),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Text(
                                    'Occupied',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Oak Street Villa',
                              style: TextStyle(
                                fontSize:20,
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xfff3f4f6).withOpacity(0.8),
                                  borderRadius: BorderRadius.circular(20),
                                  
                                ),
                                child:Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset('assets/images/png/dot_icon.png',height: 5,width: 5,),
                                ),
                              ),
                              Text('')
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
