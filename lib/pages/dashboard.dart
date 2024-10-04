import 'package:flutter/material.dart';
import '../vehicle-data.dart';  
class DashboardPage extends StatelessWidget {
  final String username;

  const DashboardPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,          
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Halo $username',
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: vehicleList.length,          
        itemBuilder: (context, index) {
          final vehicle = vehicleList[index];            
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(vehicle.imageAsset),                  
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        vehicle.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(vehicle.type),
                      const SizedBox(height: 4),
                      Text(vehicle.description),
                      const SizedBox(height: 4),
                      Text('Mesin: ${vehicle.engine}'),
                      Text('Tipe Bahan Bakar: ${vehicle.fuelType}'),
                      Text('Harga: ${vehicle.price}'),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');          
          },
        tooltip: 'Logout',
        child: const Icon(Icons.logout),        
        ),
    );
  }
}
