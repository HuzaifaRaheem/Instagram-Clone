import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> portfolioImages=[
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
    "images/5.jpg",
    "images/6.jpg",




  ];
  List<String> posts=[
    'images/post1.jpg',
    'images/post2.jpg',
    'images/post3.jpg',
    'images/post4.jpg',
    'images/post5.jpg',
    'images/post6.jpg',

  ];
  List<String> personsName=[
    'Andrew Tate',
    'Huzaifa Raheem',
    'Abdullah Raheem',
    'Saifullah Raheem',
    'Zahid',
    'Asghar'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/instatitle.png',height: 50,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),

        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) => Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage('images/insta.jpg'),
                          child: CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage(portfolioImages[index]),
                          ),
                          ),
                        Text(personsName[index],style: TextStyle(fontSize: 12),)
                      ],
                    ),
                    ),
                  ),
                ))

              ),
            Divider(),
            Column(
              children: List.generate(6, (index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 14,
                                backgroundImage: AssetImage(portfolioImages[index]),
                              ),
                            ),
                          ),
                          Text(personsName[index]),
                          Spacer(),
                          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),

                        ],
                      ),
                      Image.asset(posts[index]),
                  Row(
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.chat_bubble_outline)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.label_important_outline)),
                      Spacer(),
                      IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border)),

                    ],
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          RichText(text: TextSpan(

                            children: [
                              TextSpan(text: "Liked by ",style: TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(text: personsName[index],style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold)),
                              TextSpan(text: " and",style: TextStyle(fontWeight: FontWeight.w500)),
                              TextSpan(text: " 1200 others",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold)),
                            ]
                          ))
                        ],
                      ),
                    ),
                  )
                    ],

              ),
              ),
            )
          ],

            )

        ),
    );

  }
}
