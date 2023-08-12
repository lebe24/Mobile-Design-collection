import 'package:mobile/src/utils/extension.dart';
import 'package:mobile/src/utils/rive_utils.dart';
import 'package:flutter/material.dart';
import 'package:mobile/src/Widget/Avatar.dart';
import 'package:mobile/src/Widget/side_menu_tile.dart';
import 'package:mobile/src/components/list_rive_widget.dart';
import 'package:rive/rive.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    RiveAsset selectedMenu = sideMenu.first;
    return SizedBox(
      height: double.infinity,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(children: [
        Avatar(),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Account Setting'.capitalize(),
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: Colors.white70),
          ),
        ),
        ...sideMenu.map((menu) => SideMenuTile(
              menu: menu,
              press: () {
                setState(() {
                  selectedMenu = menu;
                });
                print(menu);
                menu.input!.value == false
                    ? menu.input!.change(true)
                    : menu.input!.change(false);
              },
              isActive: selectedMenu == menu,
              riveonInit: (artboard) {
                StateMachineController controller = RiveUtils.getRiveController(
                    artboard,
                    stateMachineName: menu.stateMachineName);
                menu.input = controller.findSMI('active') as SMIBool;
              },
            ))
      ]),
    );
  }
}
