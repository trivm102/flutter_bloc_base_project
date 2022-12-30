import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../generated/locale_keys.g.dart';

class TodosOverviewPage extends StatelessWidget {
  const TodosOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(child: Text('Todo'))
    );
  }
}
