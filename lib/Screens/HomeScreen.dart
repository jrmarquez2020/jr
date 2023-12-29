import 'package:final_project/Screens/GymWorkoutscreens/GymWorkouts.dart';
import 'package:final_project/Screens/HomeWorkoutScreens/HomeWo_screen.dart';
import 'package:final_project/Screens/MealPlan_Screen.dart';
import 'package:final_project/Screens/WorkOutScreen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

   int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Homee(),
    WorkOut(),
    Meal()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Meal plan',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 131, 123, 232),
        onTap: _onItemTapped,
        
      ),
    );
  }
}


class Homee extends StatelessWidget {
  const Homee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body:
          
             Center(
              child: 
               Column(
                 children: [
                   CustomHeader1(),
                   ClickableBackgroundImageCard(),
                 ],
               ),
         ),
      
    );
  }
}

class ClickableBackgroundImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FancyWeekCalendar(),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeWorkoutScreen() ));
      },
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Container(
          width: 450.0, // Set the width as desired
          height: 100.0, // Set the height as desired
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              
              image: AssetImage('assets/images/cardio-workout.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Text(
              'Curve Rush',
              style: TextStyle(
                 color: Colors.black,
                  fontSize: 20.0,
                   fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ),
    SizedBox(
          height: 10,
        ),
    GestureDetector(
      onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const GymWorkoutscreen() ));
      },
      
      child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            Color.fromARGB(255, 176, 106, 231).withOpacity(0.1), // Adjust the color and opacity as needed
            BlendMode.srcOver,
          ),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        
        child: Container(
          width: 450.0, // Set the width as desired
          height: 100.0, // Set the height as desired
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            image: DecorationImage(
              image: AssetImage('assets/images/gym.jpg'), // Replace with your image path
              fit: BoxFit.cover,
            ),
            
          ),
          child: Center(
            child: Text(
              'Curve Rush',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    
    )),
      ]
    ) ;
  }
}


class FancyWeekCalendar extends StatefulWidget {
  @override
  _FancyWeekCalendarState createState() => _FancyWeekCalendarState();
}

class _FancyWeekCalendarState extends State<FancyWeekCalendar> {
  late DateTime _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  void _updateSelectedDate(int daysToAdd) {
    setState(() {
      _selectedDate = _selectedDate.add(Duration(days: daysToAdd));
    });
  }

  @override
  Widget build(BuildContext context) {
    DateTime startOfWeek = _selectedDate.subtract(Duration(days: _selectedDate.weekday - 1));
    DateTime endOfWeek = startOfWeek.add(Duration(days: 6));

    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => _updateSelectedDate(-7),
              ),
              Text(
                'Week of ${DateFormat('MMMM d').format(startOfWeek)}',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () => _updateSelectedDate(7),
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(7, (index) {
              DateTime currentDate = startOfWeek.add(Duration(days: index));
              bool isCurrentDay = currentDate.day == DateTime.now().day;

              return Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: isCurrentDay ?Color.fromARGB(255, 104, 132, 231) : Colors.transparent,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Column(
                  children: [
                    Text(
                      DateFormat('E').format(currentDate),
                      style: TextStyle(
                        fontSize: 16.0,
                        color: isCurrentDay ? Colors.white : Colors.black,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      DateFormat('d').format(currentDate),
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: isCurrentDay ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class CustomHeader1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/OOO.jpg'), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 16,
            left: 16,
            child: Text(
              'Curve Rush',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
          Positioned(
            right: 16.0,
            bottom: 16.0,
            child: Icon(
              Icons.help,
              color: Colors.white,
              size: 30.0,
            ),
            )
        ],
      ),
    );
  }
}
