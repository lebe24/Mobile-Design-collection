import 'package:rive/rive.dart';

class RiveAsset {
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  RiveAsset(this.src,
      {required this.stateMachineName,
      required this.title,
      required this.artboard,
      this.input});
}

List<RiveAsset> sideMenu = [
    RiveAsset('assets/rive/icons.riv', stateMachineName: "HOME_interactivity", title: "Home", artboard: "HOME"),
    RiveAsset('assets/rive/icons.riv', stateMachineName: "HOME_interactivity", title: "Home", artboard: "HOME"),
    RiveAsset('assets/rive/icons.riv', stateMachineName: "HOME_interactivity", title: "Home", artboard: "HOME"),
    RiveAsset('assets/rive/icons.riv', stateMachineName: "HOME_interactivity", title: "Home", artboard: "HOME"),
  ];
