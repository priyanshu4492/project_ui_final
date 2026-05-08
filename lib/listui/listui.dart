import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A1A2E),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const ProductListScreen(),
    );
  }
}

// ─── Data Model ───────────────────────────────────────────────
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double originalPrice;
  final String imageUrl;
  final String category;
  final double rating;
  final int reviews;
  final bool isNew;
  final Color accentColor;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.imageUrl,
    required this.category,
    required this.rating,
    required this.reviews,
    this.isNew = false,
    required this.accentColor,
  });

  int get discountPercent =>
      (((originalPrice - price) / originalPrice) * 100).round();
}

// ─── Sample Data ──────────────────────────────────────────────
final List<Product> products = [
  Product(
    id: '1',
    name: 'AirPods Pro Max',
    description:
        'Active Noise Cancellation, Transparency mode, Spatial audio with dynamic head tracking for an immersive listening experience.',
    price: 24999,
    originalPrice: 32000,
    imageUrl: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?w=400',
    category: 'Audio',
    rating: 4.8,
    reviews: 2341,
    isNew: true,
    accentColor: const Color(0xFF6C63FF),
  ),
  Product(
    id: '2',
    name: 'Sony WH-1000XM5',
    description:
        'Industry-leading noise canceling with two processors and eight microphones. Up to 30-hour battery life.',
    price: 18999,
    originalPrice: 24000,
    imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
    category: 'Audio',
    rating: 4.7,
    reviews: 5621,
    accentColor: const Color(0xFFFF6584),
  ),
  Product(
    id: '3',
    name: 'MacBook Air M3',
    description:
        'Supercharged by the M3 chip. Up to 18 hours battery. Thin and light design with Liquid Retina display.',
    price: 114900,
    originalPrice: 125000,
    imageUrl: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=400',
    category: 'Laptops',
    rating: 4.9,
    reviews: 8902,
    isNew: true,
    accentColor: const Color(0xFF43E97B),
  ),
  Product(
    id: '4',
    name: 'iPhone 16 Pro',
    description:
        'A18 Pro chip. Camera Control. 48MP Fusion camera. Titanium design. Up to 33 hours video playback.',
    price: 134900,
    originalPrice: 145000,
    imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400',
    category: 'Phones',
    rating: 4.9,
    reviews: 12043,
    isNew: true,
    accentColor: const Color(0xFFFA709A),
  ),
  Product(
    id: '5',
    name: 'Apple Watch Ultra 2',
    description:
        'The most rugged and capable Apple Watch. Precision dual-frequency GPS, 60-hour battery, and titanium case.',
    price: 89900,
    originalPrice: 99000,
    imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
    category: 'Wearables',
    rating: 4.8,
    reviews: 3210,
    accentColor: const Color(0xFF4FACFE),
  ),
  Product(
    id: '6',
    name: 'Samsung Galaxy Tab S9',
    description:
        'Dynamic AMOLED 2X display, Snapdragon 8 Gen 2, IP68 water resistant, S Pen included.',
    price: 72999,
    originalPrice: 85000,
    imageUrl: 'https://images.unsplash.com/photo-1542751371-adc38448a05e?w=400',
    category: 'Tablets',
    rating: 4.6,
    reviews: 4123,
    accentColor: const Color(0xFFFFD700),
  ),
  Product(
    id: '7',
    name: 'Logitech MX Master 3S',
    description:
        'Ultra-fast MagSpeed scrolling, 8K DPI sensor, ergonomic design. Works on any surface.',
    price: 7995,
    originalPrice: 9999,
    imageUrl: 'https://images.unsplash.com/photo-1527814050087-3793815479db?w=400',
    category: 'Accessories',
    rating: 4.7,
    reviews: 6780,
    accentColor: const Color(0xFFFF9A56),
  ),
];

// ─── Main Screen ──────────────────────────────────────────────
class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  String selectedCategory = 'All';
  final List<String> categories = [
    'All',
    'Audio',
    'Phones',
    'Laptops',
    'Tablets',
    'Wearables',
    'Accessories',
  ];

  List<Product> get filteredProducts => selectedCategory == 'All'
      ? products
      : products.where((p) => p.category == selectedCategory).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D1A),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          // ── App Bar ──
          SliverAppBar(
            expandedHeight: 130,
            floating: false,
            pinned: true,
            backgroundColor: const Color(0xFF0D0D1A),
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding:
                  const EdgeInsets.only(left: 20, bottom: 16),
              title: const Text(
                'Discover',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                ),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF1A1A3E), Color(0xFF0D0D1A)],
                  ),
                ),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search_rounded,
                    color: Colors.white70, size: 26),
                onPressed: () {},
              ),
              Stack(
                children: [
                  IconButton(
                    icon: const Icon(Icons.shopping_bag_outlined,
                        color: Colors.white70, size: 26),
                    onPressed: () {},
                  ),
                  Positioned(
                    right: 8,
                    top: 8,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: const BoxDecoration(
                        color: Color(0xFF6C63FF),
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Text('3',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 8),
            ],
          ),

          // ── Category Filter ──
          SliverToBoxAdapter(
            child: SizedBox(
              height: 52,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final cat = categories[index];
                  final isSelected = cat == selectedCategory;
                  return GestureDetector(
                    onTap: () => setState(() => selectedCategory = cat),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 250),
                      margin: const EdgeInsets.only(right: 10, top: 8, bottom: 8),
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color(0xFF6C63FF)
                            : const Color(0xFF1E1E32),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: isSelected
                              ? const Color(0xFF6C63FF)
                              : const Color(0xFF2E2E4E),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          cat,
                          style: TextStyle(
                            color:
                                isSelected ? Colors.white : Colors.white54,
                            fontWeight: isSelected
                                ? FontWeight.w600
                                : FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // ── Product Count ──
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                '${filteredProducts.length} products found',
                style: const TextStyle(
                    color: Colors.white38,
                    fontSize: 12,
                    letterSpacing: 0.5),
              ),
            ),
          ),

          // ── Product List ──
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ProductCard(product: filteredProducts[index]);
                },
                childCount: filteredProducts.length,
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }
}

// ─── Product Card ─────────────────────────────────────────────
class ProductCard extends StatefulWidget {
  final Product product;
  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isWishlisted = false;

  @override
  Widget build(BuildContext context) {
    final p = widget.product;
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: const Color(0xFF14142A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFF1E1E3A)),
        boxShadow: [
          BoxShadow(
            color: p.accentColor.withOpacity(0.08),
            blurRadius: 20,
            spreadRadius: 2,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Image Section ──
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20)),
                child: Image.network(
                  p.imageUrl,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => Container(
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          p.accentColor.withOpacity(0.3),
                          p.accentColor.withOpacity(0.1),
                        ],
                      ),
                    ),
                    child: Icon(Icons.image_rounded,
                        size: 60, color: p.accentColor.withOpacity(0.5)),
                  ),
                ),
              ),

              // Gradient overlay
              Positioned.fill(
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20)),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.4),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              // Badge: NEW
              if (p.isNew)
                Positioned(
                  top: 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: p.accentColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'NEW',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ),

              // Discount Badge
              if (p.discountPercent > 0)
                Positioned(
                  top: p.isNew ? 44 : 12,
                  left: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF4757),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      '-${p.discountPercent}%',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),

              // Wishlist Button
              Positioned(
                top: 12,
                right: 12,
                child: GestureDetector(
                  onTap: () =>
                      setState(() => isWishlisted = !isWishlisted),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                      color: isWishlisted
                          ? const Color(0xFFFF4757)
                          : Colors.black.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      isWishlisted
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),

              // Category chip
              Positioned(
                bottom: 12,
                right: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: Colors.white.withOpacity(0.1)),
                  ),
                  child: Text(
                    p.category,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // ── Content Section ──
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name
                Text(
                  p.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.3,
                  ),
                ),
                const SizedBox(height: 6),

                // Description
                Text(
                  p.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 12),

                // Rating Row
                Row(
                  children: [
                    ...List.generate(
                      5,
                      (i) => Icon(
                        i < p.rating.floor()
                            ? Icons.star_rounded
                            : (i < p.rating
                                ? Icons.star_half_rounded
                                : Icons.star_outline_rounded),
                        color: const Color(0xFFFFD700),
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      '${p.rating}',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      '(${_formatCount(p.reviews)})',
                      style: const TextStyle(
                          color: Colors.white38, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 14),

                // Price + Button Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹${_formatPrice(p.originalPrice)}',
                          style: const TextStyle(
                            color: Colors.white30,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.white30,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          '₹${_formatPrice(p.price)}',
                          style: TextStyle(
                            color: p.accentColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              p.accentColor,
                              p.accentColor.withOpacity(0.7),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(14),
                          boxShadow: [
                            BoxShadow(
                              color: p.accentColor.withOpacity(0.35),
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.add_shopping_cart_rounded,
                                color: Colors.white, size: 16),
                            SizedBox(width: 6),
                            Text(
                              'Add to Cart',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatPrice(double price) {
    if (price >= 1000) {
      final parts = price.toStringAsFixed(0);
      // Indian number format
      if (parts.length > 5) {
        return '${parts.substring(0, parts.length - 5)},${parts.substring(parts.length - 5, parts.length - 3)},${parts.substring(parts.length - 3)}';
      } else if (parts.length > 3) {
        return '${parts.substring(0, parts.length - 3)},${parts.substring(parts.length - 3)}';
      }
      return parts;
    }
    return price.toStringAsFixed(0);
  }

  String _formatCount(int count) {
    if (count >= 1000) return '${(count / 1000).toStringAsFixed(1)}k';
    return count.toString();
  }
}