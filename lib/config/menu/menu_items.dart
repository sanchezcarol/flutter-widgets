

import 'package:flutter/material.dart';

class MenuItems {

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });
}

const menuItems = <MenuItems>[
  MenuItems(
    title: 'Counter',
    subtitle: 'Counter riverpod', 
    link: '/counter', 
    icon: Icons.add_box_rounded
  ),
  MenuItems(
    title: 'Buttons', 
    subtitle: 'Some buttons in flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItems(
    title: 'Cards', 
    subtitle: 'Stylized container', 
    link: '/cards', 
    icon: Icons.credit_card_off_outlined
  ),
  MenuItems(
    title: 'Progress Indicators', 
    subtitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh_rounded
  ),
  MenuItems(
    title: 'Snackbars', 
    subtitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),
  MenuItems(
    title: 'Animated container', 
    subtitle: 'StateFul Widget animado ', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_outlined
  ),
  MenuItems(
    title: 'UI Controls',
    subtitle: 'Serie de controles en flutter', 
    link: '/uicontrols', 
    icon: Icons.control_camera_outlined
  ),
  MenuItems(
    title: 'Tutorial',
    subtitle: 'Introducción a la aplicación', 
    link: '/tutorial', 
    icon: Icons.accessibility_new_outlined
  ),
  MenuItems(
    title: 'Infinite scroll',
    subtitle: 'Listas infinitas y pull to refresh', 
    link: '/infinitescroll', 
    icon: Icons.list_rounded
  ),
  MenuItems(
    title: 'Theme changer',
    subtitle: 'Cambiar tema', 
    link: '/themeChanger', 
    icon: Icons.color_lens_outlined
  ),
  
];