import 'package:exercise_forecast/logic/model/gender.dart';

class User {
  const User({
    required this.name,
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
    required this.durationOfExercise,
  });

  final String name;
  final double height;
  final double weight;
  final int age;
  final Gender gender;
  final int durationOfExercise;
}
