// user_state.dart
class UserState {
  final String name;
  final String phone;

  UserState({required this.name, required this.phone});

  // Copia el estado actual y actualiza las propiedades que cambian.
  UserState copyWith({String? name, String? phone}) {
    return UserState(
      name: name ?? this.name,
      phone: phone ?? this.phone,
    );
  }
}
