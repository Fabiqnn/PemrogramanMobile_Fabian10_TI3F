import 'package:flutter/material.dart';
import 'package:master_plan/models/data_layer.dart';
import 'package:master_plan/provider/plan_provider.dart';

class PlanScreen extends StatefulWidget {
  final int planIndex;
  const PlanScreen({super.key, required this.planIndex});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Master Plan Fabian')),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          final plan = plans[widget.planIndex];

          return Column(
            children: [
              Expanded(child: _buildList(plan, plansNotifier)),
              SafeArea(child: Text(plan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(plansNotifier),
    );
  }

  Widget _buildAddTaskButton(ValueNotifier<List<Plan>> plansNotifier) {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        final plans = plansNotifier.value;
        final plan = plans[widget.planIndex];

        final updatedTasks = List<Task>.from(plan.tasks)..add(const Task());

        plansNotifier.value = List.from(plans)
          ..[widget.planIndex] = Plan(name: plan.name, tasks: updatedTasks);
      },
    );
  }

  Widget _buildList(Plan plan, ValueNotifier<List<Plan>> plansNotifier) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) {
        return _buildTaskTile(plan, index, plansNotifier);
      },
    );
  }

  Widget _buildTaskTile(
    Plan plan,
    int index,
    ValueNotifier<List<Plan>> plansNotifier,
  ) {
    final task = plan.tasks[index];

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          _updateTask(
            plansNotifier,
            plan,
            index,
            Task(description: task.description, complete: selected ?? false),
          );
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          _updateTask(
            plansNotifier,
            plan,
            index,
            Task(description: text, complete: task.complete),
          );
        },
      ),
    );
  }

  void _updateTask(
    ValueNotifier<List<Plan>> plansNotifier,
    Plan plan,
    int index,
    Task newTask,
  ) {
    final plans = plansNotifier.value;
    final updatedTasks = List<Task>.from(plan.tasks)..[index] = newTask;

    plansNotifier.value = List.from(plans)
      ..[widget.planIndex] = Plan(name: plan.name, tasks: updatedTasks);
  }
}
