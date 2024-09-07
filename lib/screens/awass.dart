import 'package:data_app/provider/data_provider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AwassScreen extends ConsumerWidget {
  const AwassScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsync = ref.watch(dataAwassProvider);

    if (dataAsync.isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pradhan Mantri Awas Yojna',
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Houses Overview',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 300,
            width: double.infinity,
            child: dataAsync.when(
              data: (data) {
                final List<BarChartGroupData> barGroups = data
                    .asMap()
                    .map((index, item) {
                      return MapEntry(
                        index,
                        BarChartGroupData(
                          x: index,
                          barRods: [
                            BarChartRodData(
                              toY: item.housesCompleted,
                              color: Colors.blue,
                              width: 5.0,
                            ),
                            BarChartRodData(
                              toY: item.housesSanctioned,
                              color: Colors.green,
                              width: 5.0,
                            ),
                            BarChartRodData(
                              toY: item.targetsAllocated,
                              color: Colors.orange,
                              width: 5.0,
                            ),
                          ],
                        ),
                      );
                    })
                    .values
                    .toList();

                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: BarChart(
                    BarChartData(
                      gridData: const FlGridData(show: true),
                      titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                          axisNameWidget: const Text('States/UTs',
                              style: TextStyle(fontSize: 14)),
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) {
                              final stateName = data[value.toInt()].stateUt;

                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                space: 8.0,
                                child: Transform.rotate(
                                  angle: -45 * 3.14159 / 180,
                                  child: Text(
                                    stateName,
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          axisNameWidget: const Text('Houses Completed',
                              style: TextStyle(fontSize: 14)),
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) {
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  value.toString(),
                                  style: const TextStyle(fontSize: 10),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                          color: const Color(0xff37434d),
                          width: 1,
                        ),
                      ),
                      barGroups: barGroups,
                      alignment: BarChartAlignment.spaceBetween,
                    ),
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
          const SizedBox(height: 9.0),
          Container(
            height: 1.0,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(1.0)),
          ),
          const SizedBox(height: 9.0),
          Expanded(
            child: dataAsync.when(
              data: (data) {
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        height: 100,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all()),
                        child: ListTile(
                          title: Text('State/UT: ${item.stateUt}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      'Targets Allocated: ${item.targetsAllocated}'),
                                  const Expanded(child: SizedBox()),
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: const BoxDecoration(
                                        color: Colors.orange),
                                  ),
                                  const SizedBox(
                                    width: 120.0,
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      'Houses Sanctioned: ${item.housesSanctioned}'),
                                  const Expanded(child: SizedBox()),
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration: const BoxDecoration(
                                        color: Colors.green),
                                  ),
                                  const SizedBox(
                                    width: 120.0,
                                  )
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      'Houses Completed: ${item.housesCompleted}'),
                                  const Expanded(child: SizedBox()),
                                  Container(
                                    height: 10.0,
                                    width: 10.0,
                                    decoration:
                                        const BoxDecoration(color: Colors.blue),
                                  ),
                                  const SizedBox(
                                    width: 120.0,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}
