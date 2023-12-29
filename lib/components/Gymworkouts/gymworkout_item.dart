import 'package:final_project/Screens/GymWorkoutscreens/workoutlist_screen.dart';
import 'package:final_project/model/GymWorkouts/GymWorkou.dart';
import 'package:flutter/material.dart';



class GymWorkoutsItem extends StatelessWidget {
  final GymWorkouts Home;

  const GymWorkoutsItem({super.key, required this.Home});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('pressed ${Home.id}');
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((_) => workoutListScreen(
                  category: Home,
                ))));
      },
      child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Color.fromARGB(255, 176, 106, 231).withOpacity(0.02), // Adjust the color and opacity as needed
            BlendMode.srcOver,
          ),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              image: AssetImage('assets/images/background1.jpg'), // Replace with your image path
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
      ),),)
    );
  }
}
