import 'package:bpm_app/model/activity.dart';

class BPMProcess {
  List<Activity> activities;

  BPMProcess() : activities = [];

  List<String> listarNomesDeAtividades() {
    List<String> listaDeNomes = [];
    for (Activity a in activities) {
      listaDeNomes.add(a.name);
    }
    return listaDeNomes;
  }

  // StartEvent getStartEvent() {
  //   StartEvent start = StartEvent(name: "start");
  //   return start;
  // }

  addActivity({required Activity activity}) {
    activities.add(activity);
  }
}
