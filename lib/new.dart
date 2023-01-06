import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController = TabController(
    length: 2,
    vsync: this,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                color: Colors.red,
                height: 30,
              ),
            ),
            SliverAppBar(
              expandedHeight: 140,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: const Icon(
                Icons.abc,
                color: Colors.amber,
              ),
              centerTitle: true,
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF353535),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Container(
                  height: 35,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF566782),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TabBar(
                    controller: tabController,
                    onTap: (value) {},
                    tabs: ['Overview', 'Map']
                        .map(
                          (title) => Tab(
                            text: title,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  controller: tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [HomeOverviewTab(), MapHomeTab()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeOverviewTab extends StatelessWidget {
  const HomeOverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("home");
  }
}

class MapHomeTab extends StatelessWidget {
  const MapHomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("home");
  }
}

class HomePageSecond extends StatefulWidget {
  const HomePageSecond({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageSecond> createState() => _HomePageSecondState();
}

class _HomePageSecondState extends State<HomePageSecond>
    with SingleTickerProviderStateMixin {
  late final TabController tabController = TabController(
    length: 2,
    vsync: this,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 140,
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: const Icon(
                Icons.abc,
                color: Colors.amber,
              ),
              centerTitle: true,
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'SourceSansPro',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF353535),
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Container(
                  height: 35,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: const Color(0xFF566782),
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: TabBar(
                    controller: tabController,
                    onTap: (value) {},
                    tabs: ['Overview', 'Map']
                        .map(
                          (title) => Tab(
                            text: title,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  controller: tabController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [HomeOverviewTab(), MapHomeTab()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
