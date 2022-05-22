import 'package:flutter/material.dart';

class SliverDashboardHeader extends StatelessWidget {
  const SliverDashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverPersistentHeader(
      delegate: _DashboardHeaderDelegate(),
      floating: false,
      pinned: false,
    );
  }
}

class _DashboardHeaderDelegate extends SliverPersistentHeaderDelegate {
  const _DashboardHeaderDelegate();

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      height: double.infinity,
      color: Colors.black,
      child: SafeArea(
        child: Theme(
          data: ThemeData.dark(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.access_alarms_outlined),
                    label: Text(r'Ganhe U$ 50'),
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (_, __) => AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                  ),
                  itemCount: 4,
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 250;

  @override
  double get minExtent => 250;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
