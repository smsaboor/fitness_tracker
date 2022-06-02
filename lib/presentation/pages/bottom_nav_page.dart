import 'package:fitness_tracker/presentation/pages/more_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fitness_tracker/bloc/cubit/bottom_nav_cubit.dart';
import 'package:fitness_tracker/presentation/pages/post_page.dart';
import 'package:fitness_tracker/presentation/pages/home_page.dart';
import 'package:fitness_tracker/presentation/pages/tools_page.dart';
import 'package:fitness_tracker/presentation/pages/get_trained_page.dart';

class TabScreen extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<TabScreen> {
  /// Create a list of pages to make the code shorter and better readability
  ///
  final _pageNavigation = [
    HomePage(),
    GetTrained(),
    PostPage(),
    ToolsPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          // appBar: AppBar(
          //   title: Text('Switch themes'),
          //   actions: [
          //     BlocBuilder<SwitchThemeCubit, SwitchThemeState>(
          //       builder: (context, state) {
          //         return Switch(
          //           value: state.isDarkThemeOn,
          //           onChanged: (newValue) {
          //             context.read<SwitchThemeCubit>().toggleSwitch(newValue);
          //           },
          //         );
          //       },
          //     ),
          //   ],
          // ),
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }

  Widget _buildBody(int index) {
    /// Check if index is in range
    /// else return Not Found widget
    return _pageNavigation.elementAt(index);
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: context.read<BottomNavCubit>().state,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined), label: "Get Trained"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "Post"),
        BottomNavigationBarItem(
            icon: Icon(Icons.border_top_outlined), label: 'Tools'),
        BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: "More"),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    context.read<BottomNavCubit>().updateIndex(index);
  }
}
