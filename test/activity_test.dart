import 'package:bpm_app/model/activity.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("classe Activity existe", () {
    Activity a = Activity(name:"teste");
    expect(a, isA<Activity>());
  });

  test("classe Activity tem funcao que retorna activity name", () {
    Activity a = Activity(name: "tarefa 1");
    expect(a.name, "tarefa 1");
  });

  test("Activity não pode ser criada com nome vazio", () {
    expect(() => Activity(name: ""), throwsA(isA<ActivityEmptyNameException>()));
  });
}
