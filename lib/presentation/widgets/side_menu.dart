import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_04_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  
  final GlobalKey<ScaffoldState> scaffoldKey;
  
  const SideMenu({super.key, required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navigationDestination = 0;
  @override
  Widget build(BuildContext context) {
    double hasNotch = MediaQuery.of(context).viewPadding.top;
    return NavigationDrawer(
      selectedIndex: navigationDestination,
      onDestinationSelected: (value) {
        setState(() {
          navigationDestination = value;
        });
        context.push(menuItems[value].link);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(18, hasNotch > 35 ? 0 : 20, 18, 20),
          child: const Text('Menu Lateral'),
        ),
        ...menuItems
        .sublist(0,3)
        .map((menuItem) => 
          NavigationDrawerDestination(
            icon: Icon(menuItem.icon), 
            label: Text(menuItem.title)
          )
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(18, 5, 18, 16),
          child: Divider(),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(18, 10, 18, 20),
          child: Text('Otras opciones'),
        ),
        ...menuItems
        .sublist(3)
        .map((menuItem) => 
          NavigationDrawerDestination(
            icon: Icon(menuItem.icon), 
            label: Text(menuItem.title),
          )
        )
      ],
    );
  }
}
