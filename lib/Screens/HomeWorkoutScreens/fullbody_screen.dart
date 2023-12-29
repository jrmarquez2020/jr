import 'package:final_project/model/HomeWorkouts/fullbody.dart';
import 'package:flutter/material.dart';


class fullbodyScreen extends StatefulWidget {
  final fullbody recipe;

  const fullbodyScreen({super.key, required this.recipe});

  @override
  State<fullbodyScreen> createState() => _fullbodyScreenState();
}

class _fullbodyScreenState extends State<fullbodyScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(widget.recipe.title),
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
              if (widget.recipe.imageUrl != '')
                Image.network(
                  widget.recipe.imageUrl,
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
                              child: Text(widget.recipe.steps[index]),
                            ),
                          );
                        }),
                        itemCount: widget.recipe.steps.length,
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
