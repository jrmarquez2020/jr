import 'package:final_project/components/Gymworkouts/workoutentry_item.dart';
import 'package:final_project/data/Gymworkouts/workout__list.dart';
import 'package:final_project/model/GymWorkouts/GymWorkou.dart';
import 'package:flutter/material.dart';



class workoutListScreen extends StatelessWidget {
  final GymWorkouts category;

  const workoutListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    var filteredfullbody =
        WORKOUTTLIST.where((element) => element.catId == category.id).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
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
      body: ListView.builder(
        itemBuilder: ((_, index) => workoutItem(
              full: filteredfullbody[index],
            )),
        itemCount: filteredfullbody.length,
      ),
    );
  }
}
