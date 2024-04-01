// ignore_for_file: deprecated_member_use, unused_import

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons {
  final List<Map<String, dynamic>> homeExpensesCategories = [

    {
      "name": "healthy food",
      "icon": FontAwesomeIcons.bowlFood,
    },

    {
      "name": "junk food",
      "icon": FontAwesomeIcons.mugHot,
    },

    {
      "name": "personal care",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "Gifts",
      "icon": FontAwesomeIcons.gasPump,
    },
    
    {
      "name": "helathcare",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "fashion",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "clothes",
      "icon": FontAwesomeIcons.tshirt,
    },

    {
      "name": "Gcourse material",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "subscriptions",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "extra ciricular",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "home grooming",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "vehicle",
      "icon": FontAwesomeIcons.bus,
    },

    {
      "name": "travel",
      "icon": FontAwesomeIcons.bus,
    },

    {
      "name": "Get together",
      "icon": FontAwesomeIcons.gasPump,
    },

    {
      "name": "educational subscriptions",
      "icon": FontAwesomeIcons.gasPump,
    },

    // {
    //   "name": "miscellaneous",
    //   "icon": FontAwesomeIcons.gasPump,
    // },

    // {
    //   "name": "Gas Filling",
    //   "icon": FontAwesomeIcons.gasPump,
    // },
    // {
    //   "name": "Grocery",
    //   "icon": FontAwesomeIcons.shoppingCart,
    // },
    // {
    //   "name": "Milk",
    //   "icon": FontAwesomeIcons.mugHot,
    // },
    // {
    //   "name": "internet",
    //   "icon": FontAwesomeIcons.wifi,
    // },
    // {
    //   "name": "Electricity",
    //   "icon": FontAwesomeIcons.bolt,
    // },
    // {
    //   "name": "Water",
    //   "icon": FontAwesomeIcons.water,
    // },
    // {
    //   "name": "Rent",
    //   "icon": FontAwesomeIcons.home,
    // },
    // {
    //   "name": "Phone bill",
    //   "icon": FontAwesomeIcons.phone,
    // },
    // {
    //   "name": "Dinning out",
    //   "icon": FontAwesomeIcons.utensils,
    // },
    // {
    //   "name": "Entertainment",
    //   "icon": FontAwesomeIcons.film,
    // },
    // {
    //   "name": "Healthcare",
    //   "icon": FontAwesomeIcons.medkit,
    // },
    // {
    //   "name": "Transportation",
    //   "icon": FontAwesomeIcons.bus,
    // },
    // {
    //   "name": "Clothing",
    //   "icon": FontAwesomeIcons.tshirt,
    // },
    // {
    //   "name": "Insurance",
    //   "icon": FontAwesomeIcons.shieldAlt,
    // },
    // {
    //   "name": "Education",
    //   "icon": FontAwesomeIcons.graduationCap,
    // },
    {
      "name": "Others",
      "icon": FontAwesomeIcons.cartPlus,
    },
  ];

  IconData getExpenseCategoryICons(String categoryName) {
    final category = homeExpensesCategories.firstWhere(
      (category) => category['name'] == categoryName,
      orElse: () => {"icon": FontAwesomeIcons.shoppingCart},
    );
    return category['icon'];
  }
}
