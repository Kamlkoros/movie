import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Movie extends StatelessWidget {
  const Movie({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> movieDetails = [
      {
        'title': 'Star Wars: The Rise of Skywalker',
        'image': 'assets/movie_image.png',
        'year': '2019',
      },
      {
        'title': 'Star Wars: The Force Awakens',
        'image': 'assets/movie_image.png',
        'year': '2015',
      },
      {
        'title': 'Rogue One: A Star Wars Story',
        'image': 'assets/movie_image.png',
        'year': '2016',
      },
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: Image.asset(
                          'assets/movie_image.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: Color(0xFF252836),
                            padding: EdgeInsets.only(left: 8),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 0,
                        left: 0,
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF321AC5), Color(0xFF6512CF)],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.play_arrow, size: 34),
                              label: Text(
                                'Watch Now',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 10,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Dragon Wars: Jedi',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(width: 90),
                            borderedContainer('4K', borderRadius: 8),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.clock,
                              color: Color(0xFFBBBBBB),
                              size: 12,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '152 minutes',
                              style: TextStyle(
                                color: Color(0xFFBBBBBB),
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(
                              FontAwesomeIcons.solidStar,
                              color: Color(0xFFBBBBBB),
                              size: 12,
                            ),
                            SizedBox(width: 5),
                            Text(
                              '7.0 (IMDb)',
                              style: TextStyle(
                                color: Color(0xFFBBBBBB),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Release date',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  'December 9, 2017',
                                  style: TextStyle(
                                    color: Color(0xFFBBBBBB),
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 100),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Genre',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Row(
                                  children: [
                                    borderedContainer('Action'),
                                    SizedBox(width: 10),
                                    borderedContainer('Sci-Fi'),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Synopsis',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'Rey (Daisy Ridley) finally manages to find the legendary Jedi knight, Luke Skywalker (Mark Hamill) on an island with a magical aura. The heroes of The Force Awakens including Leia, Finn ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFFBBBBBB),
                                ),
                              ),
                              TextSpan(
                                text: 'Read more..',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Related Movies',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: movieDetails.length,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                width: 200,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.asset(
                                          'assets/movie_image.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: movieDetails[index]['title'],
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                ' (${movieDetails[index]['year']})',
                                            style: TextStyle(
                                              color: Color(0xFFBBBBBB),
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget borderedContainer(String text, {double borderRadius = 20}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [Color.fromARGB(131, 255, 255, 255), Color(0x00FFFFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Text(text, style: TextStyle(color: Colors.white, fontSize: 12)),
    );
  }
}
