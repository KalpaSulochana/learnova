import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnova/card.dart';
import 'package:learnova/colors.dart';
import 'package:learnova/models/resource_item.dart';
import 'package:learnova/providers/resource_providers.dart';

class AlCombinedMaths extends StatelessWidget {
  const AlCombinedMaths({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0, // Opens "Past Papers" by default
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: primaryBlue,
          elevation: 100,
          title: Text(
            "Select resource",
            style: TextStyle(
              color: cardWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),

              // Unit Titles
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'A/L Combined Maths',
                      style: TextStyle(
                        color: textDark,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),

                    Text(
                      'All resources',
                      style: TextStyle(
                        color: textLight,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 5),

              // Tab Bar
              TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                indicatorColor: primaryBlue,
                indicatorWeight: 3.0,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: textDark,
                unselectedLabelColor: textLight,
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                unselectedLabelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
                dividerColor: Colors.transparent,
                tabs: const [
                  Tab(text: 'Past Papers'),
                  Tab(text: 'Notes'),
                  Tab(text: 'Marking Schemes'),
                ],
              ),

              // Tab Views
              Expanded(
                child: TabBarView(
                  children: [
                    const _ResourceListView(type: ResourceType.pastPaper),
                    const _ResourceListView(type: ResourceType.note),
                    const _ResourceListView(type: ResourceType.markingScheme),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResourceListView extends ConsumerWidget {
  const _ResourceListView({required this.type});

  final ResourceType type;
  static const String _subjectId = 'combined_maths';

  Future<void> _refresh(WidgetRef ref) async {
    try {
      await ref.read(resourceRepositoryProvider).getResources(
            subjectId: _subjectId,
            forceRefresh: true,
          );
    } catch (_) {
      // Keep the screen stable; the provider below will expose any uncached error.
    } finally {
      ref.invalidate(resourceItemsProvider(_subjectId));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<ResourceItem>> resources =
        ref.watch(resourceItemsProvider(_subjectId));

    return resources.when(
      loading: () => ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 10),
        children: [
          const SizedBox(height: 10),
          Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                color: primaryBlue,
              ),
            ),
          ),
        ],
      ),
      error: (Object error, StackTrace stackTrace) => ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        children: [
          const SizedBox(height: 10),
          Center(
            child: Column(
              children: [
                Text(
                  'Could not load resources',
                  style: TextStyle(color: textDark, fontSize: 16),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => ref.invalidate(resourceItemsProvider(_subjectId)),
                  child: const Text('Try again'),
                ),
              ],
            ),
          ),
        ],
      ),
      data: (List<ResourceItem> allResources) {
        final List<ResourceItem> visibleItems = allResources
            .where((ResourceItem item) =>
                item.subjectId == _subjectId && item.type == type)
            .toList(growable: false);

        if (visibleItems.isEmpty) {
          if (type == ResourceType.note) {
            return Center(
              child: Text(
                'Notes Content',
                style: TextStyle(color: textDark, fontSize: 16),
              ),
            );
          }

          // Matches the original empty Marking Schemes tab, with only its top gap.
          return ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: const [SizedBox(height: 10)],
          );
        }

        return RefreshIndicator(
          color: primaryBlue,
          backgroundColor: cardWhite,
          onRefresh: () => _refresh(ref),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 10),
            itemCount: visibleItems.length,
            itemBuilder: (BuildContext context, int index) {
              return CommonCard.fromResource(resource: visibleItems[index]);
            },
          ),
        );
      },
    );
  }
}
