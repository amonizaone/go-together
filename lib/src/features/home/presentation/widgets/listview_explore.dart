import 'package:flutter/material.dart';
import 'package:gotogether/src/core/constants/data_mock.dart';

import 'card_explore.dart';

class ListviewExplore extends StatelessWidget {
  const ListviewExplore({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ListView.separated(
      itemBuilder: (context, index) {
        return CardExprole();
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: DataMock.dataExplore.length,
    );
  }
}
