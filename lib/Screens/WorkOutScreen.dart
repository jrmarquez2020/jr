import 'dart:async';
import 'package:final_project/Screens/GymWorkoutscreens/GymWorkouts.dart';
import 'package:final_project/Screens/HomeWorkoutScreens/HomeWo_screen.dart';
import 'package:flutter/material.dart';

class WorkOut extends StatelessWidget {
  const WorkOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Center(
        child: Column(children: [
         CustomHeader(),
        TimerCard(),
         SizedBox(
            height: 20,
          ),
          InkWell(
            splashColor: Color.fromARGB(255, 176, 106, 231),
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
            height:150.0, // Set the height as desired
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
      
                image: AssetImage('assets/images/Home-workout.jpg'), // Replace with your image path
                fit: BoxFit.cover,
                
              ),
            ),
            child: Center(
              child: Text(
                'Home Workouts',
                style: TextStyle(
                   color: Colors.black54,
                    fontSize: 50.0,
                     fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
          ),
        
          InkWell(
        splashColor: Color.fromARGB(255, 176, 106, 231),
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
            height:150.0, // Set the height as desired
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage('assets/images/Gym-workouts.jpg'), // Replace with your image path
                fit: BoxFit.cover,
              ),
              
            ),
            child: Center(
              child: Text(
                'Gym Workouts',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
          
          )),
        ]),
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/OIP.jpg'), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 16,
            left: 16,
            child: Text(
              'Workouts',
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


class TimerCard extends StatefulWidget {
  @override
  _TimerCardState createState() => _TimerCardState();
}

class _TimerCardState extends State<TimerCard> {
  Duration duration = Duration(minutes: 20);
  late Timer _timer;
  late DateTime endTime;

  @override
  void initState() {
    super.initState();
    endTime = DateTime.now().add(duration);
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (DateTime.now().isAfter(endTime)) {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16),
      child: ListTile(
        title: Text(
          'Curve Rush',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          'Timer will expire in ${formatDuration(duration)}',
          style: TextStyle(color: Colors.black87, fontSize: 14),
        ),
        onTap: () => _startTimer(),
      ),
    );
  }

  void _startTimer() {
    setState(() {
      endTime = DateTime.now().add(duration);
    });
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
}