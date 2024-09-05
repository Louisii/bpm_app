class Activity {
  final String name;

  Activity({
    required this.name,
  }) {
    if (name.isEmpty) {
      throw ActivityEmptyNameException();
    }
  }
}

class ActivityEmptyNameException implements Exception {
  final String message;

  ActivityEmptyNameException(
      [this.message = "O nome da atividade não pode ser vazio"]);

  @override
  String toString() => message.isEmpty
      ? "ActivityEmptyNameException"
      : "ActivityEmptyNameException: $message";
}

class StartEvent extends Activity {
  StartEvent({required String name}) : super(name: name);
}
