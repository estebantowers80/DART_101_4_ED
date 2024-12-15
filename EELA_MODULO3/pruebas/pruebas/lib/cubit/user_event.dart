// user_event.dart
abstract class UserEvent {}

class UpdateName extends UserEvent {
  final String name;
  UpdateName(this.name);
}

class UpdatePhone extends UserEvent {
  final String phone;
  UpdatePhone(this.phone);
}
