import 'package:flutter/material.dart';
import 'package:rent_app/auth/login.dart';
import 'package:rent_app/const/all_colors.dart';
import 'package:rent_app/const/all_sizes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.primaryColor,
      body:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
            CircleAvatar(
              radius: 40,
              child: Image.asset('assets/images/png/logo.png'),
            ),
            SizedBox(height: 10,),
            Text('RentMate',
            style: TextStyle(
              color: AllColors.secondaryColor,
              fontSize: AllSizes.large,
            ),
            ),
            SizedBox(height: 10,),
            Text('Manage your rental properties with ease',
            style: TextStyle(
              color: AllColors.secondaryColor,
              fontSize: AllSizes.small,
            ),
            ),
            SizedBox(height: 20,),
            Container(
             padding: EdgeInsets.all(10),
              height: 220,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
              color:Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                 color: Colors.white.withValues(alpha: 0.3),
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.person,
                      color:AllColors.secondaryColor,
                      size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text("I'm a Landlord",
                      style: TextStyle(
                        color: AllColors.secondaryColor,
                        fontSize: AllSizes.medium,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('Manage properties, tenants, and rent collection',
                  style:TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize:20,
                  ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const Login())
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color:Color(0xff00AA8E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Center(
                        child: Text('Get Started',
                        style: TextStyle(
                          color:Color(0xff1C1C1C),
                          fontSize: AllSizes.medium,
                        ),
                        ),
                      ),
                       ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(10),
              height: 220,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
              color:Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                 color: Colors.white.withValues(alpha: 0.3),
                  )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.home,
                      color:AllColors.secondaryColor,
                      size: 30,
                      ),
                      SizedBox(width: 10,),
                      Text("I'm a Tenant",
                      style: TextStyle(
                        color: AllColors.secondaryColor,
                        fontSize: AllSizes.medium,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text('Pay rent, submit requests, and manage your lease',
                  style:TextStyle(
                    color: AllColors.secondaryColor,
                    fontSize:20,
                  ),
                  ),
                  SizedBox(height: 20,),
                  InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: () {
                      
                    },
                    child: Container(
                      padding: EdgeInsets.all(5),
                      height: 50,
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color:AllColors.secondaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Center(
                        child: Text('Get Started',
                        style: TextStyle(
                          color:Color(0xff1C1C1C),
                          fontSize: AllSizes.medium,
                        ),
                        ),
                      ),
                       ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      );
  }
}