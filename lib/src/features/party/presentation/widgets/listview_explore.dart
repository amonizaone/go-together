import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/routes/routes.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_state.dart';
import 'package:gotogether/src/features/activity/presentation/pages/activity_info_page.dart';

import 'card_explore.dart';

class ListviewExplore extends StatelessWidget {
  const ListviewExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActivityBloc, ActivityState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        // if (state.error != null) {
        //   return Center(child: Text("Error: ${state.error}"));
        // }

        final activities = state.activities;

        return ListView.separated(
          itemCount: activities.length,
          itemBuilder: (context, index) {
            final item = state.activities[index];
            return InkWell(
              onTap: () {
                context.read<ActivityBloc>().add(ActivityEvent.selected(item));
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ActivityInfoPage(),
                ));
              },
              child: CardExprole(
                item: item,
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
            // indent: 16,
            // endIndent: 16,
            color: Colors.transparent,
            thickness: 1,
          ),

          // DataMock.dataExplore.length,
        );
      },
    );
  }
}
