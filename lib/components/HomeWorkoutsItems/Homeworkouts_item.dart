import 'package:final_project/Screens/HomeWorkoutScreens/fullbodylist_screen.dart';
import 'package:final_project/model/HomeWorkouts/HomeWorkouts.dart';
import 'package:flutter/material.dart';



class HomeWorkoutsItem extends StatelessWidget {
  final HomeWorkouts Home;

  const HomeWorkoutsItem({super.key, required this.Home});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('pressed ${Home.id}');
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((_) => FullbodyListScreen(
                  category: Home,
                ))));
      },
       child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Color.fromARGB(255, 176, 106, 231).withOpacity(0.03), // Adjust the color and opacity as needed
            BlendMode.srcOver,
          ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              image: AssetImage('assets/images/tie.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
            
          ),
        child: Center(
        child: Text(
          Home.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),),),
    );
  }
}
