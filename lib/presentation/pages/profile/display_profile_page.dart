
import 'package:fitness_tracker/bloc/cubit/profile_cubit.dart';
import 'package:fitness_tracker/presentation/widgets/profile/about_widget.dart';
import 'package:fitness_tracker/presentation/widgets/profile/name_widget.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker/presentation/pages/profile/edit_profile_page.dart';

import 'package:fitness_tracker/presentation/widgets/profile/appbar_widget.dart';
import 'package:fitness_tracker/presentation/widgets/profile/upgradeButton_widget.dart';
import 'package:fitness_tracker/presentation/widgets/profile/numbers_widget.dart';
import 'package:fitness_tracker/presentation/widgets/profile/profile_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayProfilePage extends StatelessWidget {
  const DisplayProfilePage({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(builder: (_, state) {
      return Scaffold(
        appBar: buildAppBar(context),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            ProfileWidget(
              imagePath: state.user.imagePath,
              onClicked: () async {
                await Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => EditProfilePage()),
                );
              },
            ),
            const SizedBox(height: 24),
            BuildName(state.user.name, state.user.email),
            const SizedBox(height: 24),
            Center(
                child: ButtonWidget(text: 'Upgrade To PRO', onClicked: () {})),
            const SizedBox(height: 24),
            NumbersWidget(),
            const SizedBox(height: 48),
            BuildAbout(state.user.about),
          ],
        ),
      );
    });
  }
}
