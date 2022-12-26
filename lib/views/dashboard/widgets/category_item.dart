import 'package:flutter/material.dart';
import 'package:getme_ui/views/model_details.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key});

  final List<Map<String, dynamic>> locations = [
    {
      'name': 'Alexandru Zdrobău',
      'image':
          'https://images.unsplash.com/photo-1635408182516-bafaff7680b9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=406&q=80',
      'rating': 4.7,
    },
    {
      'name': 'Zohre Nemati',
      'image':
          'https://images.unsplash.com/photo-1589881787083-0fcfec1db918?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=266&q=80',
      'rating': 4.1,
    },
    {
      'name': 'Han Zhou',
      'image':
          'https://images.unsplash.com/photo-1526893907956-8accfae0c7d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
      'rating': 4.3,
    },
    {
      'name': 'Emma Kotos',
      'image':
          'https://images.unsplash.com/photo-1575186083127-03641b958f61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
      'rating': 4.3,
    },
    {
      'name': 'Rafaella Mendes Diniz',
      'image':
          'https://images.unsplash.com/photo-1616683693504-3ea7e9ad6fec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'rating': 5,
    },
    {
      'name': 'Hannah Chledowski',
      'image':
          'https://images.unsplash.com/photo-1469460340997-2f854421e72f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'rating': 4.8,
    },
    {
      'name': 'Angelina Rufina',
      'image':
          'https://images.unsplash.com/photo-1515161318750-781d6122e367?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=376&q=80',
      'rating': 4.5,
    },
    {
      'name': 'Eva Aladoski',
      'image':
          'https://images.unsplash.com/photo-1616147503419-500e80be8447?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
      'rating': 4.3,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: GridView.extent(
          shrinkWrap: true,
          crossAxisSpacing: 20,
          mainAxisSpacing: 30,
          maxCrossAxisExtent: 300,
          childAspectRatio: 0.8,
          physics: const ScrollPhysics(),
          children: locations.map((location) {
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ModelDetails(
                          image: location['image'],
                          name: location['name'],
                        )),
              ),
              child: Container(
                // height: 500,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(location['image']),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            const Color(0xFF0E1216).withOpacity(0),
                            const Color(0xFF0E1216).withOpacity(0.7),
                            // Colors.red,
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            location['name'],
                            style: GoogleFonts.lato(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(location['rating'].toString(),
                                  style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white)),
                              const Icon(
                                Icons.star_rounded,
                                size: 20,
                                color: Colors.white,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }).toList()),
    );
  }
}
