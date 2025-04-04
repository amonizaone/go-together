import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotogether/src/core/layouts/nav_buttom_bar.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_bloc.dart';
import 'package:gotogether/src/features/activity/presentation/bloc/activity_event.dart';
import 'package:gotogether/src/features/party/presentation/widgets/card_explore.dart';
import 'package:gotogether/src/features/party/presentation/widgets/listview_explore.dart';
import 'package:gotogether/src/features/party/presentation/pages/pages.dart';
import 'package:gotogether/src/features/profile/presentation/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late ActivityBloc _bloc;

  @override
  void initState() {
    super.initState();
    // _bloc = ActivityBloc()..add(const ActivityEvent.fetchActivities());
    BlocProvider.of<ActivityBloc>(context).add(const ActivityEvent.fetchActivities());
  }

  @override
  void dispose() {
    // _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Home Page'),
        // leadingWidth: 40,
        // backgroundColor: Colors.red,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: InkWell(
            child: CircleAvatar(),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person_add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: Column(
        children: [
          // Center(
          //   child: Text('Home Page'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => CreatePartyPage()),
          //     );
          //   },
          //   child: Text('Create Thip'),
          // )
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListviewExplore(),
            ),
          )
        ],
      ),
      bottomNavigationBar: NavButtomBar(),
    );
  }
}
