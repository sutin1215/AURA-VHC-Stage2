class UserModel {
  final String id;
  final String nickname;
  final int age;
  final double height;
  final double weight;

  UserModel({
    required this.id,
    required this.nickname,
    required this.age,
    required this.height,
    required this.weight,
  });

  // Helper to convert Firebase data to our Model
  Map<String, dynamic> toMap() {
    return {
      'nickname': nickname,
      'age': age,
      'height': height,
      'weight': weight,
    };
  }
}
