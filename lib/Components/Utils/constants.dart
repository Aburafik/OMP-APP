import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omp_app/Views/Home/home_view.dart';
import 'package:omp_app/Views/Profile/profile_view.dart';
import 'package:omp_app/Views/Request/request_view.dart';

List<Widget> pages = const [
  HomeVC(),
  RequestVC(),
  Center(child: Text("My History")),
  // Center(child: Text("Wallet")),
  ProfileVC()
];

final List<Map<String, dynamic>> imgList = [
  {
    "title": "Perform a Visual Inspection",
    "description":
        'Dirt and dust, sand and grit, droppings from birds etc, should be removed from panel tops',
    "imageUrl":
        'https://images.unsplash.com/photo-1618477461853-cf6ed80faba5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZW52aXJvbm1lbnRhbCUyMHByb3RlY3Rpb258ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'
  },
  {
    "title": "Trim Back Trees.",
    "description":
        'The more sun on your panels, the more electricity they generate..',
    "imageUrl":
        'https://images.unsplash.com/photo-1621451537084-482c73073a0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8ZW52aXJvbm1lbnRhbCUyMHByb3RlY3Rpb258ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
  },
  {
    "title": "Spray Dusty Panels.",
    "description":
        'To remove unwanted dirt and dust from your solar panels, safely hose them off a few times a year..',
    "imageUrl":
        'https://images.unsplash.com/photo-1622254936966-4a3c4def576f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8ZW52aXJvbm1lbnRhbCUyMHByb3RlY3Rpb258ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
  },
  {
    "title": "Resist the Urge to Shovel Off Snow",
    "description":
        'Reduce the amount of fumes from factories. Reduce the amount of CFCs that are released.',
    "imageUrl":
        'https://images.unsplash.com/photo-1611273426858-450d8e3c9fce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGVudmlyb25tZW50YWwlMjBwcm90ZWN0aW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
  },
  {
    "title": "Volunteer for cleanups in your community",
    "description":
        'Volunteer for cleanups in your community. Help reduce the amount of trash that is thrown away.',
    "imageUrl":
        'https://images.unsplash.com/photo-1618969322232-92a7aa295ce1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZW52aXJvbm1lbnRhbCUyMHByb3RlY3Rpb258ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
  },
  {
    "title": "Reduce fumes from factories",
    "description":
        'Reduce the amount of fumes from factories. Reduce the amount of CFCs that are released.',
    "imageUrl":
        'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  }
];
List wasteCategories = [
  {
    "categoryName": "Plastic",
    "icon": FontAwesomeIcons.bottleDroplet,
    "marketPrice": "1.00",
  },
  {
    "categoryName": "Metal",
    "icon": FontAwesomeIcons.mercury,
    "marketPrice": "0.50ps",
  },
  {
    "categoryName": "Plythene",
    "icon": FontAwesomeIcons.peopleRoof,
    "marketPrice": "0.50ps",
  },
  {
    "categoryName": "Cans",
    "icon": Icons.roundabout_left,
    "marketPrice": "1.00 Ghps",
  },
];