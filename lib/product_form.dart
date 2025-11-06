import 'package:flutter/material.dart';
import 'package:luluorange_mobile/widgets/left_drawer.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductFormPage extends StatefulWidget {
    const ProductFormPage({super.key});

    @override
    State<ProductFormPage> createState() => _ProductFormPageState();
}

class _ProductFormPageState extends State<ProductFormPage> {
    final _formKey = GlobalKey<FormState>();
    // name, price, desscription, category, thumbnail, isFeatured, arting
    String _name = "";
    String _description = "";
    String _category = "atasan"; // default
    String _thumbnail = "";
    double _rating = 0;
    bool _isFeatured = false; // default
    double _price = 0;
    String? selectedValue; // nilai yang dipilih user

    final List<String> _categories = [
    'Atasan',
    'Bawahan',
    'Sepatu',
    'Bola',
    'Aksesoris',
  ];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                'Add Product Form',
              ),
            ),
            backgroundColor: Color(0xFFFFA726),
            foregroundColor: Colors.white,
          ),
          drawer: LeftDrawer(),
          body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  // === Product name ===
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        labelText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _name = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Nama produk tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ),
                  // === Product proce ===
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Masukkan harga produk",
                        labelText: "Price",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      keyboardType: TextInputType.number, // ⬅️ Biar cuma angka yang muncul
                      onChanged: (value) {
                        setState(() {
                          _price = double.tryParse(value) ?? 0.0; // ubah teks ke angka
                        });
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Harga produk tidak boleh kosong!";
                        }

                        final price = double.tryParse(value);
                        if (price == null) {
                          return "Harga harus berupa angka!";
                        }

                        if (price < 0) {
                          return "Harga tidak boleh negatif!";
                        }

                        return null; // ✅ valid
                      },
                    ),
                  ),
                  // === Category ===
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: DropdownButtonFormField2<String>(
                      decoration: InputDecoration(
                        labelText: 'Category',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      isExpanded: true,
                      dropdownStyleData: DropdownStyleData(
                        direction: DropdownDirection.right,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                      ),
                      value: selectedValue,
                      items: _categories.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) => setState(() => selectedValue = value),
                    )
                  ),
                  // === Product description ===
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Description",
                        labelText: "Description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _description = value!;
                        });
                      },
                      maxLength: 200,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Deskripsi produk tidak boleh kosong!";
                        }
                        return null;
                      },
                    ),
                  ),
                  // === Product rating ===
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // biar teks rata kiri
                      mainAxisSize: MainAxisSize.min, // biar nggak stretch tinggi penuh
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: const Text(
                            'Rating',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        RatingBar.builder(
                          initialRating: _rating,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemCount: 5,
                          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => const Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              _rating = rating;
                            });
                          },
                        ),
                      ]
                    ),
                  ),
                  // === Is featured ===
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        Checkbox(
                        value: _isFeatured,
                        activeColor: Colors.orange, // warna saat dicentang
                        onChanged: (bool? value) {
                          setState(() {
                            _isFeatured = value!;
                          });
                        },
                      ),
                      const Text('Is featured'),
                      ],
                    ),
                  ),
                  // === Thumbnail ===
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Thumbnail URL",
                        labelText: "Thumbnail URL",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _thumbnail = value!;
                        });
                      },
                      validator: (String? value) {
                        final pattern = RegExp(r'^(https?:\/\/)[\w\-\.]+\.[a-z]{2,}\/?.*$');
                        if (value == null || value.isEmpty) {
                          return "Thumbnail tidak boleh kosong!";
                        }
                        if (!pattern.hasMatch(value)) {
                            return 'Format URL tidak valid';
                          }
                        return null;
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFFFA726)),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Produk berhasil tersimpan'),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Nama: $_name'),
                                        Text('Harga: $_price'),
                                        Text('Deskripsi: $_description'),
                                        Text('Kategori: $_category'),
                                        Text('Thumbnail: $_thumbnail'),
                                        Text(
                                              'Featured: ${_isFeatured ? "Ya" : "Tidak"}'),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        Navigator.pop(context);
                                        _formKey.currentState!.reset();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        );
    }
}