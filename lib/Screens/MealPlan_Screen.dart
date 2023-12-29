import 'package:final_project/main.dart';
import 'package:flutter/material.dart';

class Meal extends StatelessWidget {
  const Meal({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: MyAppBar(),
      body:
       Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int week = 1; week <= 4; week++) ..._buildWeek(week),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildWeek(int week) {
    return [
      Card(
        color: Colors.white70,
        elevation: 5.0,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
        child: Column(
          children: [
            _buildWeekHeader(week),
            for (int day = 1; day <= 7; day++) ..._buildDayPlan(week, day),
          ],
        ),
      ),
      SizedBox(height: 16.0),
    ];
  }

  Widget _buildWeekHeader(int week) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.0),
          topRight: Radius.circular(5.0),
        ),
      ),
      padding: EdgeInsets.all(10.0),
      child: Text(
        'Week $week',
        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }

  List<Widget> _buildDayPlan(int week, int day) {
    String dayName = _getDayName(day);
    String diet = _getDiet(day);
    return [
      Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            Container(
              color: Colors.blue.shade100,
              padding: EdgeInsets.all(8.0),
              child: Text(
                '$dayName - Day $day\n($diet)',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
           
            ),
            
            Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildMeal('Breakfast', _getBreakfast(week, day, diet)),
                  _buildMeal('Lunch', _getLunch(week, day, diet)),
                  _buildMeal('Dinner', _getDinner(week, day, diet)),
                ],
                
              ),
              
            ),
          ],
        ),
      ),
      SizedBox(height: 8.0),
    ];
  }


  Widget _buildMeal(String title, String meal) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$title:',
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4.0),
        Text(
          meal,
          style: TextStyle(fontSize: 14.0),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }

  String _getDayName(int day) {
    switch (day) {
      case 1:
        return 'Monday';
      case 2:
        return 'Tuesday';
      case 3:
        return 'Wednesday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Friday';
      case 6:
        return 'Saturday';
      case 7:
        return 'Sunday';
      default:
        return '';
    }
  }

  String _getDiet(int day) {
    switch (day) {
      case 1:
      case 3:
      case 5:
        return 'Mediterranean Diet';
      case 2:
      case 4:
      case 7:
        return 'Vegetarian Diet';
      case 6:
        return 'High-Protein Diet';
      default:
        return '';
    }
  }

  String _getBreakfast(int week, int day, String diet) {
    switch (diet) {
      case 'Mediterranean Diet':
        return 'Labneh, Ful Medames, Shakshuka, Muhammara, Tahini, Olives, Tomatoes, Cucumbers, Feta Cheese, Whole Grain Bread or Pita  for Week $week, Day $day';
      case 'Vegetarian Diet':
        return 'Vegetarian Omelette, Greek Yogurt Parfait, Avocado Toast, Smoothie Bowl, Pancakes with Maple Syrup, Vegetarian Breakfast Burrito, Chia Seed Pudding, Vegan Banana Bread, Vegetarian Breakfast Wrap, Muesli with Yogurt for Week $week, Day $day';
      case 'High-Protein Diet':
        return 'Greek Yogurt with Nuts and Berries, Protein Smoothie, Egg White Omelette, Cottage Cheese Bowl, Quinoa Breakfast Bowl, Protein-Packed Breakfast Burrito, Smoked Salmon and Cream Cheese Bagel for Week $week, Day $day';
      default:
        return '';
    }
  }

  String _getLunch(int week, int day, String diet) {
    switch (diet) {
      case 'Mediterranean Diet':
        return 'Greek Salad, Hummus and Veggie Wrap, Caprese Salad, Falafel Bowl, Mediterranean Chickpea Salad, Stuffed Grape Leaves (Dolma), Mediterranean Veggie and Couscous Bowl, Mediterranean Quinoa Salad, Grilled Eggplant and Halloumi Sandwich, Lentil and Vegetable Stew for Week $week, Day $day';
      case 'Vegetarian Diet':
        return 'Vegetarian Lunch for Week $week, Day $day';
      case 'High-Protein Diet':
        return 'Grilled Chicken Salad, Quinoa and Black Bean Bowl, Lentil Soup with Vegetables, Tofu Stir-Fry with Broccoli and Cashews, Salmon and Avocado Wrap, Chickpea and Spinach Curry, Turkey and Quinoa Stuffed Bell Peppers, Greek Yogurt Chicken Salad Wrap, Shrimp and Quinoa Salad, High-Protein Vegetarian Chili for Week $week, Day $day';
      default:
        return '';
    }
  }

  String _getDinner(int week, int day, String diet) {
    switch (diet) {
      case 'Mediterranean Diet':
        return 'Grilled Lemon Herb Chicken, Baked Cod with Mediterranean Salsa, Eggplant Parmesan, Greek Chicken Souvlaki Skewers, Spinach and Feta Stuffed Chicken Breast, Mediterranean Roasted Vegetables with Quinoa, Lemon Garlic Shrimp Pasta, Ratatouille (Provencal Vegetable Stew), Spanakopita (Spinach and Feta Phyllo Pie), Lamb Kebabs with Tzatziki Sauce for Week $week, Day $day';
      case 'Vegetarian Diet':
        return 'Vegetarian Pasta Primavera, Eggplant Parmesan, Chickpea and Vegetable Stir-Fry, Quinoa and Black Bean Stuffed Peppers, Mushroom Risotto, Vegetarian Chili, Spinach and Ricotta Stuffed Shells, Sweet Potato and Black Bean Enchiladas, Caprese Pizza, Vegetarian Buddha Bowl for Week $week, Day $day';
      case 'High-Protein Diet':
        return 'Grilled Chicken Breast with Quinoa and Roasted Vegetables, Baked Salmon with Lemon-Dill Sauce, Turkey and Vegetable Skewers, Lentil and Chickpea Salad with Feta, Tofu and Vegetable Stir-Fry, Shrimp and Broccoli Quinoa Bowl, Chickpea and Spinach Curry, Grilled Steak with Chimichurri Sauce, Greek Yogurt Chicken Alfredo Pasta, Black Bean and Vegetable Quesadillas for Week $week, Day $day';
      default:
        return '';
    }
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(200);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/th.jpg'), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(
        'Meal Plan',
        style: TextStyle(color: Colors.black54, fontWeight:FontWeight.w900, fontSize: 70),
      ),
      centerTitle: true, // Center the title
    );
  }
}