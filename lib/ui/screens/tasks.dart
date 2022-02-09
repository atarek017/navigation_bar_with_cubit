import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:navigation_bar_with_cubit/business_logic/cubit/cubit.dart';
import 'package:navigation_bar_with_cubit/business_logic/cubit/sates.dart';
import 'package:navigation_bar_with_cubit/ui/widgets/defult.dart';

class NewTasksScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var tasks = AppCubit.get(context).newTasks;

        // return tasksBuilder(
        //   tasks: tasks,
        // );

        return Container();
      },
    );
  }
}