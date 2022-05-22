import 'package:flutter/material.dart';
import 'package:wise/app/features/dashboard/presenter/widgets/dashboard_header.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            cacheExtent: 1,
            slivers: [
              SliverDashboardHeader(),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, __) => Container(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    child: const ListTile(
                      title: Text('hello world'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
