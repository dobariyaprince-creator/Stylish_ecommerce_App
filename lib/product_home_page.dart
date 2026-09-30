import 'package:flutter/material.dart';
import 'package:stylish/services/product_api/product_api.dart';
import 'model/product_api_model.dart';

class ProductHomePage extends StatefulWidget {
  const ProductHomePage({super.key});

  @override
  State<ProductHomePage> createState() => _ProductHomePageState();
}

class _ProductHomePageState extends State<ProductHomePage> {
  final _dataSource = ProductRemoteDataSource();
  late Future<ProductApiModel> _product;
  @override
  void initState() {
      _product = _dataSource.fetchProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: _product,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(
                  child: Text('Error:${snapshot.error}'));
            }
            final product = snapshot.data!;
            return Center(
              child: Container(
               //color: Colors.blue.shade500,
                width: 200,
                height: 320,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue,boxShadow: [BoxShadow(
                  color: Colors.grey.withOpacity(0.50),
                  offset: Offset(0, 4),
                  blurRadius: 10,
                )],
                    border: BoxBorder.all(color: Colors.grey.shade700,width: 1)
                ),
                child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: product.image.isNotEmpty
                      ? Expanded(flex:2,child: Image.network(product.image))
                      : const Icon(Icons.image_not_supported_outlined,size: 80,),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      product.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 15, fontWeight: .bold),
                    ),
                    const SizedBox(height: 8,),
                    Text("\$${product.price}",
                      style: TextStyle(fontSize: 18,color: Colors.green),),
                    const SizedBox(height: 8,),
                    Text(product.description,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
