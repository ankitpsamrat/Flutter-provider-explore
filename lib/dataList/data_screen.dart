import 'package:explore_provider/dataList/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('statement');
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<DataProvider>(
        builder: (context, provider, child) {
          final List<Map<String, dynamic>> allData = provider.dataList;

          return (allData.isNotEmpty)
              ? ListView.builder(
                  itemCount: allData.length,
                  itemBuilder: (BuildContext context, int index) {
                    final Map<String, dynamic> data = allData[index];

                    return ListTile(
                      title: Text('${data['Name']}'),
                      subtitle: Text('${data['No']}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              context.read<DataProvider>().updateData({
                                'Name': 'Samrat',
                                'No': 1234567890,
                              }, index);
                            },
                            icon: const Icon(Icons.edit),
                          ),
                          IconButton(
                            onPressed: () {
                              context.read<DataProvider>().deleteData(index);
                            },
                            icon: const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )
              : const Center(child: Text('No data'));
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          context.read<DataProvider>().addData({
            'Name': 'Ankit',
            'No': 1234567890,
          });
        },
      ),
    );
  }
}
