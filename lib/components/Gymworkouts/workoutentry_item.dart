import 'package:final_project/Screens/GymWorkoutscreens/workout_screen.dart';
import 'package:final_project/model/GymWorkouts/workout.dart';
import 'package:flutter/material.dart';



class workoutItem extends StatelessWidget {
  final workout full;

  const workoutItem({Key? key, required this.full}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return Card(   
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              InkWell(
                onTap: () {
                  print(full.id);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              workoutScreen(gwork: full))));
                },
                child: AspectRatio(
                  aspectRatio: 3 / 2,
                  child: ClipRRect(
                    borderRadius:BorderRadius.all(Radius.circular(20)) ,
                    child: full.imageUrl != ''
                        ? Image.network(
                            full.imageUrl,
                            fit: BoxFit.cover,
                          )
                        : Image.asset(''),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Container(
                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      full.title,
                      style: Theme.of(context).textTheme.caption,
                      softWrap: true,
                    ),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
