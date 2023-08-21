

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
];