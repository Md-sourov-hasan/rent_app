import 'package:flutter/material.dart';
import 'package:rent_app/const/all_colors.dart';

class PropertieScreen extends StatelessWidget {
  const PropertieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.only(left: 8,right: 8),
              child: Container(
                height: MediaQuery.sizeOf(context).height*0.4,
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
                            ),]
                ),
                child:Column(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height*0.2,
                      width: double.infinity,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18)
                        ),
                        image: DecorationImage(
                          image: AssetImage('assets/images/png/a_one.png'),
                    fit: BoxFit.cover
                          ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16,left: 10,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 30,
                              width: 90,
                              decoration: BoxDecoration(
                                color:Color(0xff4c4449).withOpacity(0.4),
                                borderRadius: BorderRadius.circular(12)
                              ),
                              child: Center(
                                child: Text(
                                  'Apartment',
                                  style: TextStyle(
                                    color: AllColors.secondaryColor,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(12)
                              )
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ),
            ),
          ],
        ),
      )
      );
  }
}
