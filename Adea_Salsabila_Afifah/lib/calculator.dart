import 'constants.dart';

// Class untuk mengelola logika perhitungan BMR
class Calculator {
  Calculator({
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
  });

  final int height;
  final int weight;
  final int age;
  final Gender gender;

  double _bmr = 0.0;

  // Fungsi untuk menghitung BMR menggunakan rumus Mifflin-St Jeor
  String calculateBMR() {
    if (gender == Gender.male) {
      // Rumus BMR Pria: 10 * weight + 6.25 * height - 5 * age + 5
      _bmr = (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else {
      // Rumus BMR Wanita: 10 * weight + 6.25 * height - 5 * age - 161
      _bmr = (10 * weight) + (6.25 * height) - (5 * age) - 161;
    }
    return _bmr.toStringAsFixed(0); // Mengembalikan nilai BMR pembulatan
  }

  // Fungsi mengembalikan judul hasil
  String getResult() {
    return 'BMR RESULT';
  }

  // Fungsi mengembalikan deskripsi interpretasi BMR
  String getInterpretation() {
    return 'Kebutuhan kalori basal harian (BMR) Anda adalah ${_bmr.toStringAsFixed(0)} Calories/day.';
  }
}