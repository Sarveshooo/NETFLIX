import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NETFLIX DEMO',
      home: NetflixDemo(),
    );
  }
}

class NetflixDemo extends StatelessWidget {
  const NetflixDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'NETFLIX',
          style: TextStyle(
            fontSize: 40,
            color: Colors.red,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all( 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all( 5.0),
                  child: Text(
                    'ACTION MOVIES',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontStyle: FontStyle.italic
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      moviePoster(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGTU98xck9yinjPGIJwMez3oJYJ3HV-rIHEQ&s',
                      ),
                      moviePoster(
                        'https://w7.pngwing.com/pngs/957/143/png-transparent-thor-captain-america-hank-pym-iron-man-ant-man-movie-poster-template-advertisement-poster-poster-material-thumbnail.png',
                      ),
                      moviePoster(
                        'https://w7.pngwing.com/pngs/230/254/png-transparent-the-amazing-spider-man-film-poster-superhero-movie-spiderman-poster-poster-film-poster-film-thumbnail.png',
                      ),
                      moviePoster(
                        'https://w7.pngwing.com/pngs/561/815/png-transparent-marvel-avengers-2-poster-thor-god-of-thunder-loki-jane-foster-film-movie-poster-template-advertisement-poster-poster-computer-wallpaper-thumbnail.png',
                      ),
                      moviePoster(
                        'https://w7.pngwing.com/pngs/824/102/png-transparent-the-story-of-ferdinand-film-criticism-film-director-movie-poster-poster-film-premiere-thumbnail.png',
                      ),
                      moviePoster(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrN1PZIHCRKvgY0xzR-2kamVqiGlG6mCcjNQ&s',
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Widget moviePoster(String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 160,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
