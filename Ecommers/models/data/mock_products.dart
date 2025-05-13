import '../models/product.dart';

final List<Product> mockProducts = [
  Product(
    id: '1',
    name: 'Bamboo Toothbrush',
    description: 'Eco-friendly bamboo toothbrush with soft bristles.',
    price: 2.99,
    imageUrl: 'https://example.com/images/toothbrush.jpg',
    tags: ['Sustainable', 'Oral Care'],
  ),
  Product(
    id: '2',
    name: 'Reusable Grocery Bag',
    description: 'Durable and stylish grocery bag made from recycled fabric.',
    price: 5.49,
    imageUrl: 'https://example.com/images/grocerybag.jpg',
    tags: ['Reusable', 'Bags'],
  ),
  Product(
    id: '3',
    name: 'Organic Cotton T-shirt',
    description: 'Comfortable T-shirt made with 100% organic cotton.',
    price: 14.99,
    imageUrl: 'https://example.com/images/tshirt.jpg',
    tags: ['Clothing', 'Organic'],
  ),
];
