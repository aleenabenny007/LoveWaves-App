import 'package:flutter/material.dart';
import 'package:pregnancy_app/features/health/diet_plan.dart';
import 'package:pregnancy_app/features/health/exercise.dart';

class HealthCareScreen extends StatelessWidget {
  const HealthCareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                //Go to Diet Plan
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const DietPlan();
                    },
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 81, 81),
                  image: DecorationImage(
                    image: AssetImage('assets/healthcare/diet.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.4,
                  ),
                ),
                child: const Center(
                  child: Text(
                    ' Nutrition',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                //Go to Diet Plan
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const Exercise();
                    },
                  ),
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 92, 81, 81),
                  image: DecorationImage(
                    image: AssetImage('assets/healthcare/exercise.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.4,
                  ),
                ),
                child: const Center(
                  child: Text(
                    ' Exercise   ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 52,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
