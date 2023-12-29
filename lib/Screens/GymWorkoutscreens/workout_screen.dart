import 'package:final_project/model/GymWorkouts/workout.dart';
import 'package:flutter/material.dart';


class workoutScreen extends StatefulWidget {
  final workout gwork;

  const workoutScreen({super.key, required this.gwork});

  @override
  State<workoutScreen> createState() => _workoutScreenState();
}

class _workoutScreenState extends State<workoutScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.gwork.title),
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
          body: Column(
          
            children: [
              if (widget.gwork.imageUrl != '')
                Image.network(
                  widget.gwork.imageUrl,
                  fit: BoxFit.cover,
                )
              else
                Image.asset('assets/images/recipe_logo.jpg'),
              Container(
                child: const TabBar(
                    unselectedLabelColor: Colors.blue,
                    labelColor: Colors.black,
                    tabs: [           
                      Tab(
                        text: 'How To Do It',
                        icon: Icon(Icons.sports_gymnastics),
                      )
                    ]),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    Container(
                      child: ListView.builder(
                        itemBuilder: ((context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Text('${index + 1}'),
                            ),
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(widget.gwork.steps[index]),
                            ),
                          );
                        }),
                        itemCount: widget.gwork.steps.length,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
