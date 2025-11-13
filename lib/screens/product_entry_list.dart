import 'package:flutter/material.dart';
import 'package:luluorange_mobile/models/product_entry.dart';
import 'package:luluorange_mobile/widgets/left_drawer.dart';
import 'package:luluorange_mobile/screens/product_detail.dart';
import 'package:luluorange_mobile/widgets/product_entry_card.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

class ProductEntryListPage extends StatefulWidget {
  const ProductEntryListPage({super.key});

  @override
  State<ProductEntryListPage> createState() => _ProductEntryListPageState();
}

class _ProductEntryListPageState extends State<ProductEntryListPage> {
  // Tambah state untuk melacak filter
  String _filterType = 'all'; // 'all' atau 'my'

  // fetchProduct untuk menerima filter
  Future<List<ProductEntry>> fetchProduct(
      CookieRequest request, String filter) async {
    
    // Tentukan URL berdasarkan filter
    String url = 'http://localhost:8000/json/';
    
    if (filter == 'my') {
      url = 'http://localhost:8000/my-products-json/'; 
    }

    final response = await request.get(url);

    // Decode response to json format
    var data = response;

    // Convert json data to ProductEntry objects
    List<ProductEntry> listProduct = [];
    for (var d in data) {
      if (d != null) {
        listProduct.add(ProductEntry.fromJson(d));
      }
    }
    return listProduct;
  }

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Entry List'),
      ),
      drawer: const LeftDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _filterType == 'all'
                        ? Colors.red.shade500 // Warna aktif
                        : Colors.red.shade200, // Warna non-aktif
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    // Set state untuk memicu build ulang dengan filter 'all'
                    setState(() {
                      _filterType = 'all';
                    });
                  },
                  child: const Text('All Product'),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _filterType == 'my'
                        ? Colors.red.shade500 // Warna aktif
                        : Colors.red.shade200, // Warna non-aktif
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _filterType = 'my';
                    });
                  },
                  child: const Text('My Product'),
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: fetchProduct(request, _filterType),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Error: ${snapshot.error}',
                        style: const TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
                if (snapshot.data == null) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  if (!snapshot.hasData || snapshot.data!.isEmpty) { 
                    return const Center( 
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'There are no product in here yet.',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff59A5D8)),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    );
                  } else {
                    return GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0), // Padding untuk GridView
                      itemCount: snapshot.data!.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.5,
                        mainAxisSpacing: 0.5,
                        childAspectRatio: 0.68,
                      ),
                      itemBuilder: (_, index) => ProductEntryCard(
                        product: snapshot.data![index],
                        onTap: () {
                          // Navigate to product detail page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailPage(
                                product: snapshot.data![index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}