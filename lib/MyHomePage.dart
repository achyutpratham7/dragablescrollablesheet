import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(builder: (context, SizingInformation) {
        return Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/pexels-iconcom-1230988.jpg",
              fit: BoxFit.cover,
            ),
            DraggableScrollableSheet(
                initialChildSize: 0.3,
                maxChildSize: 0.8,
                minChildSize: 0.2,
                builder: (context, Controller) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.white,
                        child: ListView.builder(
                          itemCount: 10,
                          controller: Controller,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  ListTile(
                                    leading: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                            "assets/images/1.jpeg")),
                                    title: const Text(
                                      "Tamato",
                                      style: TextStyle(
                                          fontSize: 40,
                                          color: Colors.red,
                                          fontFamily:
                                              AutofillHints.addressCity),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ))
          ],
        );
      }),
    );
  }
}
