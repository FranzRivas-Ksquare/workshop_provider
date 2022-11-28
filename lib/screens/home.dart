import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_class/controllers/theme_mode_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //YOU WOULD MOVE YOUR VARIABLE INSIDE THE PROVIDER CLASS
  //HERE YOU WILL CREATE YOUR INSTANCE OF THE PROVIDER CLASS

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: ((context, obj, child){
        var nowIs = obj.nowIs;
        return Scaffold(
          appBar: AppBar(
            //THIS VARIABLE WILL CHANGE IT STATE
            backgroundColor: nowIs.primary,
          ),
          body: Container(
            //THIS VARIABLE WILL CHANGE IT STATE
            color: nowIs.background,
            child: Center(
              child: Image.asset(nowIs.image),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            //THIS VARIABLE WILL CHANGE IT STATE
              backgroundColor: nowIs.primary,
              //THIS VARIABLE WILL CHANGE IT STATE
              child: nowIs.icon,
              onPressed: () {
                Provider.of<ThemeProvider>(
                    context,
                    listen: false)
                    .switcher();
              }),
        );
      }),
    );
  }
}
