import 'package:flutter/material.dart';

class AppString{
  static List<Map<dynamic, dynamic>> list1 = [
    {
      'button' : 'Summary',
    },
    {
      'button' : 'Budget/Saving'
    },
    {
      'button' : 'Recurring'
    },
    {
      'button' : 'Calender'
    },
    {
      'button' : 'Chart'
    },
    {
      'button' : 'Transfer'
    },
  ];

  static List<Map<String, dynamic>> list2 = [
    {
      'text' : 'Reminder',
      'icon' : Icons.warning
    },
    {
      'text' : 'Debt',
      'icon' : Icons.monetization_on_rounded
    },
    {
      'text' : 'Note',
      'icon' : Icons.event_note_rounded
    },
    {
      'text' : 'Tools',
      'icon' : Icons.calendar_month_outlined
    },
    {
      'text' : 'Savings',
      'icon' : Icons.savings
    },
    {
      'text' : 'More Features',
      'icon' : Icons.more
    },
    {
      'text' : 'Settings',
      'icon' : Icons.settings
    },
    {
      'text' : 'About',
      'icon' : Icons.info
    },
    {
      'text' : 'Homepage',
      'icon' : Icons.home
    },
    {
      'text' : 'Pro Edition/Our Apps',
      'icon' : Icons.keyboard_arrow_down
    },
  ];
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final double gdp;
}







