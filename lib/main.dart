import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Eventos deportivos'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildCard(
                'Warriors vs Dallas Mavericks',
                'PlayOffs Partido 4 - Conferencia Este',
                'Fecha: 23 de mayo de 2024\nHora: 18:00\nUbicación: Chase Center',
                'https://cdn.vox-cdn.com/thumbor/f9sj8a1IAYHlL6GBqg3oSTLtgNA=/0x0:5857x3895/1200x800/filters:focal(2036x145:2972x1081)/cdn.vox-cdn.com/uploads/chorus_image/image/70874477/1380404739.0.jpg',
              ),
              SizedBox(height: 20),
              buildCard(
                'Final UEFA Champions League',
                'Final - Real Madrid vs Borussia Dortmund',
                'Fecha: 01 de junio de 2024\nHora: 15:00\nUbicación: Wembley Stadium',
                'https://editorial.uefa.com/resources/028d-1ad79495f1c0-f00d4da4f16e-1000/badges.jpeg',
              ),
              SizedBox(height: 20),
              buildCard(
                'UFC Topuria vs Volkanovski',
                'Defensa del título - UFC',
                'Fecha: 15 de febrero de 2024\nHora: 20:00\nUbicación: Los Angeles Arena',
                 'https://phantom-marca.unidadeditorial.es/9a88b9b5686dc71cd2812b652bb63979/resize/828/f/jpg/assets/multimedia/imagenes/2023/10/13/16972104574350.jpg',
              ),
              SizedBox(height: 20),
              buildCard(
                'Juegos Olimpicos Paris 2024',
                'Inaguración de los juegos Olimpicos 2024',
                'Fecha: 26 de julio de 2024\nHora: 20:00\nUbicación: Paris, Río Sena',
                'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/ufimmifputd3kkkvdgmb',
              ),
              SizedBox(height: 20),
              buildCard(
                'Eurocopa Alemania 2024',
                'Parido Inaugural - Alemania vs Escocia',
                'Fecha: 14 de junio 2024\nHora: 16:00\nUbicación: Olympiastadion, Berlín',
                'https://estaticos-cdn.prensaiberica.es/clip/586275de-8383-40e6-97bd-7fc86872abd7_alta-libre-aspect-ratio_default_0.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(String title, String description, String details, String imageUrl) {
  return Center( // Envuelve la tarjeta en un Center
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 400,
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 16 / 9, 
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
            ),
            SizedBox(height: 10),
            Text(
              details,
              style: TextStyle(
                
              ),
            ),
          ],
        ),
      ),
    ),
  );
  }
}