import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:go_router/go_router.dart';
import '../provider/data_provider.dart';

class ChartScreen extends ConsumerWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsync = ref.watch(dataCropProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crops Chart Visualization',
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
            'Market-wise Commodity Prices',
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
                              toY: item.modalPrice ?? 0.0,
                              color: Colors.blue,
                              width: 5.0,
                            ),
                            BarChartRodData(
                              toY: item.maxPrice ?? 0.0,
                              color: Colors.green,
                              width: 5.0,
                            ),
                            BarChartRodData(
                              toY: item.minPrice ?? 0.0,
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
                          axisNameWidget: const Text('Districts',
                              style: TextStyle(fontSize: 14)),
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) {
                              final marketName = data[value.toInt()].market;
                              return SideTitleWidget(
                                axisSide: meta.axisSide,
                                space: 8.0,
                                child: Transform.rotate(
                                  angle: -45 * 3.14159 / 180,
                                  child: Text(
                                    marketName,
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          axisNameWidget: const Text('Modal Price',
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
                        height: 240.0,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all()),
                        child: ListTile(
                          title: Text('Market: ${item.market}'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('State: ${item.state}'),
                              Text('District: ${item.district}'),
                              Text('Commodity: ${item.commodity}'),
                              Text('Variety: ${item.variety}'),
                              Text('Grade: ${item.grade}'),
                              Text('Arrival Date: ${item.arrivalDate}'),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                      'Min Price: ₹${item.minPrice?.toStringAsFixed(2) ?? 'N/A'}'),
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
                                      'Max Price: ₹${item.maxPrice?.toStringAsFixed(2) ?? 'N/A'}'),
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
                                      'Modal Price: ₹${item.modalPrice?.toStringAsFixed(2) ?? 'N/A'}'),
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
