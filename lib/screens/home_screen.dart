import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 80.0, right: 80.0, top: 100.0),
              child: InkWell(
                onTap: () => context.go('/chart'),
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(),
                    shape: BoxShape.rectangle,
                    color: Color.fromARGB(255, 240, 239, 239),
                  ),
                  child: const Center(
                    child: Text(
                      'Crop Price Visualization',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 80.0, right: 80.0, top: 50.0),
              child: InkWell(
                onTap: () => context.go('/awass'),
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(),
                    shape: BoxShape.rectangle,
                    color: Color.fromARGB(255, 240, 239, 239),
                  ),
                  child: const Center(
                    child: Text(
                      'Pradhan Mantri Awass',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
