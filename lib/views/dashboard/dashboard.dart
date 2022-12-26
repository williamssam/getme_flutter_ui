import 'package:flutter/material.dart';
import 'package:getme_ui/views/dashboard/widgets/categories.dart';
import 'package:getme_ui/views/dashboard/widgets/category_item.dart';
import 'package:getme_ui/views/dashboard/widgets/dashboard_header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [const DashboardHeader(), Categories(), CategoryItem()],
      ),
    );
  }
}
