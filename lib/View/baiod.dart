import 'package:flutter/material.dart';

class MyKanbanboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3, // Number of columns/stages
        itemBuilder: (context, columnIndex) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Stage ${columnIndex + 1}'),
              Container(
                height: 200, // Adjust the height as needed
                width: 150, // Adjust the width as needed
                color: Colors.grey[300],
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Card(
                  // Your task/item content goes here
                  child: ListTile(
                    title: Text('Task 1'),
                    // Additional task details/widgets can be added here
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
