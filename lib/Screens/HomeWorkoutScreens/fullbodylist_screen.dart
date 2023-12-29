import 'package:final_project/components/HomeWorkoutsItems/fullbodyentry_item.dart';
import 'package:final_project/data/Homeworkoutlist/fullbody_list.dart';
import 'package:final_project/model/HomeWorkouts/HomeWorkouts.dart';
import 'package:flutter/material.dart';



class FullbodyListScreen extends StatelessWidget {
  final HomeWorkouts category;

  const FullbodyListScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    var filteredfullbody =
        FULLBODYLIST.where((element) => element.catId == category.id).toList();
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
        itemBuilder: ((_, index) => fullbodyItem(
              full: filteredfullbody[index],
            )),
        itemCount: filteredfullbody.length,
      ),
    );
  }
}
