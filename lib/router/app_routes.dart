import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    //MenuOption(route: "home", icon: Icons.home, name: "Home Screen", screen: const HomeScreen()),
    MenuOption(route: "listview1", icon: Icons.list, name: "Listview tipo 1", screen: const Listview1Screen()),
    MenuOption(route: "listview2", icon: Icons.list_alt, name: "Listview tipo 2", screen: const Listview2Screen()),
    MenuOption(route: "alerts", icon: Icons.alarm, name: "Alertas - Alerts", screen: const AlertScreen()),
    MenuOption(route: "card", icon: Icons.credit_card, name: "Tarjetas - Cards", screen: const CardScreen()),
    MenuOption(route: "avatar", icon: Icons.supervised_user_circle_outlined, name: "Circle Avatar", screen: const AvatarScreen()),
    MenuOption(route: "animation", icon: Icons.play_arrow_outlined, name: "Animated Container", screen: const AnimatedScreen()),
    MenuOption(route: "inputs", icon: Icons.input_outlined, name: "Inputs Screen", screen: const InputsScreen()),
    MenuOption(route: "slider", icon: Icons.slideshow, name: "Slider and Checks", screen: const SliderScreen()),
    MenuOption(route: "listview_builder", icon: Icons.list, name: "Infinite Scroll & Pull to refresh", screen: const ListviewBuilderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"home": (BuildContext context) => const HomeScreen()});


    for(final option in menuOptions){
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*
  static Map<String, Widget Function(BuildContext)> routes = {
    "home": (BuildContext context) => const HomeScreen(),
    "listview1": (BuildContext context) => const Listview1Screen(),
    "listview2": (BuildContext context) => const Listview2Screen(),
    "alerts": (BuildContext context) => const AlertScreen(),
    "cards": (BuildContext context) => const CardScreen(),
  };
   */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (context) => const AlertScreen()
    );
  }
}