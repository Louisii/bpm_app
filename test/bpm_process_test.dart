import 'package:bpm_app/model/activity.dart';
import 'package:bpm_app/model/bpm_process.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("classe Processo existe", () {
    BPMProcess p = BPMProcess();
    expect(p, isA<BPMProcess>());
  });

  test("BPMProcess retorna uma lista vazia de nomes de atividades", () {
    BPMProcess p = BPMProcess();
    expect(p.listarNomesDeAtividades(), []);
  });

  test("Um processo com uma atividade pode listar o nome dessa atividade", () {
    BPMProcess p = BPMProcess();
    Activity a = Activity(name: "Atividade 1");
    p.addActivity(activity: a);
    expect(p.listarNomesDeAtividades(), ["Atividade 1"]);
  });

  test(
      "um processo com tres atividades pode listar os nomes delas (inicio, atividade 1 e fim)",
      () {
    BPMProcess p = BPMProcess();
    Activity inicio = Activity(name: "inicio");
    Activity a1 = Activity(name: "atividade 1");
    Activity fim = Activity(name: "fim");
    p.addActivity(activity: inicio);
    p.addActivity(activity: a1);
    p.addActivity(activity: fim);
    expect(p.listarNomesDeAtividades(), ["inicio", "atividade 1", "fim"]);
  });

  // group(
  //     "no processo é possivel encadear duas atividades, sendo uma de origem e outra de destino",
  //     () {
  //   test(
  //       "a lista de atividades possui um item que é o evento de inicio (StartActivity)",
  //       () {
  //     BPMProcess p = BPMProcess();

  //     expect(p.getStartEvent(), isA<StartEvent>());
  //   });
  //   test("", () {

  //   });
  // });

  // test("o processo deve possuir exatamente uma atividade inicial", () {
  //   Activity atividadeInicio = StartEvent(name: "inicio");
  //   BPMProcess process = BPMProcess();

  //   expect(process.activities.first, );
  // });
}
