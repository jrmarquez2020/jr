import 'package:final_project/components/Gymworkouts/gymworkout_item.dart';
import 'package:final_project/data/Gymworkouts/gymworkout_list.dart';
import 'package:flutter/material.dart';

class GymWorkoutscreen extends StatelessWidget {
  const GymWorkoutscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text('Gym Workouts'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      elevation: 0,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 176, 106, 231),
            Color.fromARGB(255, 166, 112, 232),
            Color.fromARGB(255, 131, 123, 232),
            Color.fromARGB(255, 104, 132, 231),
          ])
        ),
      ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: ((_, index) =>
            GymWorkoutsItem(Home: GYMWORKOUTLIST[index])),
        itemCount: GYMWORKOUTLIST.length,
      ),
    );
  }
}
