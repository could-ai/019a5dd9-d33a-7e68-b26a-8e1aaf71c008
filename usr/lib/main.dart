import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Top 3 Casino Hotels in New York',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const CasinoHotelsPage(),
    );
  }
}

class CasinoHotelsPage extends StatelessWidget {
  const CasinoHotelsPage({super.key});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Age verification image with link
                GestureDetector(
                  onTap: () => _launchURL('https://spinwisegb.com/'),
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Image.network(
                      'https://i.postimg.cc/kXtKysW5/freepik-a-popup-window-with-the-question-are-you-18-or-old-72225.png',
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          height: 200,
                          color: Colors.grey[800],
                          child: const Center(
                            child: Icon(Icons.image_not_supported,
                                size: 50, color: Colors.white54),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 60),

                // Main Heading
                const Text(
                  'Top 3 Casino Hotels in New York',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Arial',
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30),

                // About Section
                const Text(
                  'ABOUT',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Arial',
                  ),
                ),
                const SizedBox(height: 15),

                _buildParagraph(
                  'Casino hotels in New York are more than just places to stay—they are immersive destinations where luxury, entertainment, and excitement come together. Each casino resort combines world-class gaming with refined hospitality, offering guests the perfect balance between vibrant nightlife and soothing relaxation. Whether visiting New York City, the Catskills, or the rolling hills of Central New York, travelers discover casino hotels that redefine the art of leisure and entertainment.',
                ),
                _buildParagraph(
                  "Inside these resorts, the energy is magnetic. The casino floors pulse with anticipation as players move between slot machines, poker tables, roulette wheels, and high-stakes games. Whether you're a casual visitor or a seasoned player, New York's top casino hotels deliver an unmatched gaming experience in sleek, modern settings. Beyond the gaming floors, guests are treated to upscale accommodations, spa retreats, fine dining, and live performances that transform each resort into a complete entertainment destination.",
                ),
                _buildParagraph(
                  "Hospitality takes center stage at New York's premier casino hotels. Visitors enjoy spacious rooms with contemporary decor, plush bedding, and amenities that ensure every stay feels indulgent. On-site spas, pools, and wellness centers invite relaxation between nights of excitement. From world-renowned restaurants to cozy cocktail lounges, dining at these resorts is as much a highlight as the gaming itself.",
                ),
                _buildParagraph(
                  'Below are the top three casino hotels in New York that exemplify the best in luxury, gaming, and entertainment.',
                ),

                const SizedBox(height: 30),

                // Hotel 1: Turning Stone Resort Casino
                _buildHotelSection(
                  title: 'Turning Stone Resort Casino – Verona, Central New York',
                  sections: [
                    HotelDetailSection(
                      title: 'Gaming:',
                      content:
                          "Turning Stone is a world-class gaming destination offering more than 120,000 square feet of excitement. Guests can enjoy over 2,000 slot machines, a dedicated poker room, and an extensive selection of table games including blackjack, baccarat, and roulette. The resort's elegant gaming floor is complemented by professional dealers and attentive service that make every moment memorable.",
                    ),
                    HotelDetailSection(
                      title: 'Casino Hotel Amenities:',
                      content:
                          'This award-winning resort features multiple styles of accommodation—from the luxurious Tower Hotel to the intimate Lodge and the family-friendly Inn. Beyond gaming, Turning Stone offers a renowned spa, five championship golf courses, and an impressive event center that hosts concerts, comedy shows, and cultural performances. Guests can also enjoy an indoor pool, wellness center, and high-end boutiques.',
                    ),
                    HotelDetailSection(
                      title: 'Dining Options:',
                      content:
                          'Culinary excellence defines Turning Stone. The resort features more than twenty restaurants, including Wildflowers (fine dining), The TS Steakhouse, and Upstate Tavern for local flavors. Each venue blends creative menus with exceptional service, ensuring that dining becomes an essential part of the experience.',
                    ),
                    HotelDetailSection(
                      title: 'General Atmosphere:',
                      content:
                          "Turning Stone blends resort elegance with the thrill of a world-class casino. Surrounded by the scenic countryside of Central New York, it's both an entertainment hub and a peaceful escape—perfect for those seeking sophistication and excitement in equal measure.",
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Hotel 2: Resorts World Catskills
                _buildHotelSection(
                  title:
                      'Resorts World Catskills – Monticello, Catskill Mountains',
                  sections: [
                    HotelDetailSection(
                      title: 'Gaming:',
                      content:
                          "Nestled in the heart of the Catskills, Resorts World Catskills offers one of the largest gaming floors in the state. The 100,000-square-foot casino features over 1,600 slot machines and 150 live table games, providing nonstop excitement for every type of player. The resort's high-limit areas and private gaming salons cater to guests who seek exclusivity and luxury.",
                    ),
                    HotelDetailSection(
                      title: 'Casino Hotel Amenities:',
                      content:
                          'Guests are welcomed into modern, spacious suites with panoramic mountain views. The resort includes a full-service spa, indoor pool, and fitness center, along with luxury retail outlets. Entertainment takes center stage at the Resorts World Event Center, which regularly hosts concerts and performances by major artists.',
                    ),
                    HotelDetailSection(
                      title: 'Dining Options:',
                      content:
                          "From fine dining at Cellaio, an Italian steakhouse by celebrity chef Scott Conant, to casual spots like Dos Gatos Cantina and Lotus, Resorts World Catskills delivers a variety of culinary adventures. Each restaurant is designed to complement the resort's sophisticated atmosphere and diverse clientele.",
                    ),
                    HotelDetailSection(
                      title: 'General Atmosphere:',
                      content:
                          "A luxurious mountain retreat that combines natural beauty with gaming glamour, Resorts World Catskills offers a refined escape just two hours from New York City. It's where relaxation meets exhilaration, all under one roof.",
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Hotel 3: Hyatt Regency JFK Airport at Resorts World New York
                _buildHotelSection(
                  title:
                      'Hyatt Regency JFK Airport at Resorts World New York – Queens, NYC Area',
                  sections: [
                    HotelDetailSection(
                      title: 'Gaming:',
                      content:
                          "As New York City's premier casino hotel, Resorts World New York City brings the energy of Vegas to the heart of Queens. The massive gaming floor houses more than 6,500 slot machines and electronic table games, offering endless entertainment only minutes from JFK Airport. The electric ambiance and 24-hour action make it a must-visit for travelers seeking excitement close to the city.",
                    ),
                    HotelDetailSection(
                      title: 'Casino Hotel Amenities:',
                      content:
                          "The attached Hyatt Regency provides contemporary luxury with stylish rooms, high-end finishes, and excellent city or airport views. Guests have access to meeting spaces, a fitness center, and premium concierge services. It's an ideal stopover for both business travelers and leisure guests who want the thrill of a casino experience without leaving New York City.",
                    ),
                    HotelDetailSection(
                      title: 'Dining Options:',
                      content:
                          'Dining choices within the resort range from elegant sit-down restaurants to vibrant lounges. RW Prime Steakhouse & Wine Bar is a standout, while the nearby food court and bars offer quick bites and cocktails in a lively setting.',
                    ),
                    HotelDetailSection(
                      title: 'General Atmosphere:',
                      content:
                          "Blending urban energy with resort sophistication, the Hyatt Regency at Resorts World New York captures the spirit of the city that never sleeps. It's the perfect choice for visitors who want high-energy entertainment within easy reach of Manhattan and JFK Airport.",
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                // Footer
                Opacity(
                  opacity: 0.8,
                  child: Column(
                    children: [
                      const Text(
                        'Copyright © 2025 New York Guides | All Rights Reserved',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Arial',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Disclaimer: This article provides information about casino hotels and resorts in New York State. The content is intended for individuals aged 21 and over. We promote responsible gaming and encourage guests to stay informed before participating in gambling activities. Information provided is for general reference only; we do not accept responsibility for any losses or consequences arising from use of this content.',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Arial',
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontFamily: 'Arial',
          height: 1.6,
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }

  Widget _buildHotelSection({
    required String title,
    required List<HotelDetailSection> sections,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Arial',
          ),
        ),
        const SizedBox(height: 15),
        ...sections.map((section) => Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontFamily: 'Arial',
                    height: 1.6,
                  ),
                  children: [
                    TextSpan(
                      text: section.title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' ${section.content}'),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
            )),
      ],
    );
  }
}

class HotelDetailSection {
  final String title;
  final String content;

  HotelDetailSection({required this.title, required this.content});
}
