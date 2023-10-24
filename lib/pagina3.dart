
import 'package:cedesapp/Pagina1.dart';
import 'package:cedesapp/pagina2.dart';
import 'package:cedesapp/pagina4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';


class Pagina3 extends StatelessWidget {
 Pagina3({super.key});
final List<Map<String, dynamic>> _newsList = [

  //aqui solo agregas mas y cambias titulo,descripcion, imagen y el url al que van
   //aqui empieza una tarjeta
    {
      "title": "V COLOQUIO INTERNACIONAL LAS CIENCIAS DE LA EDUCACIÓN EN FUNCIÓN DEL DESARROLLO HUMANO",
      "description": "CEDES",
      "imageUrl": "assets/home1.jpg",
      "url": "https://coloquio.edunetic.com/",
    },//aqui termina solo copia y pega para agreagr mas 



    {
      "title": "TALLERES CON PERSPECTIVA DE GÉNERO Y DERECHOS HUMANOS DE JARDINERÍA Y COMPUTACIÓN",
      "description": "Albarrada-Seigen y DVV International",
      "imageUrl": "assets/talleresalbarrada.jpeg",
      "url": "https://www.facebook.com/photo?fbid=715462020600035&set=a.351187030360871&locale=es_LA",
    },
    
    
  ];
@override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.white,     //COLOR PARA EL FONDO DE LA PAGINA


//El AppBar es el banner que aparece con la imagen del centro de estudios 
      appBar: AppBar(                    
  iconTheme: IconThemeData(
    color:  Color.fromARGB(255, 0, 0, 0)  ), //este sera el color del icono del menu de hamburguesa
  backgroundColor: Color.fromARGB(255, 210, 169, 45),  //la imagen del banner no ocupa todo el espacio asi que puse ese color para que hiciera relleno
  elevation: 0.0,
  centerTitle: true,
  title: Container(
    height: kToolbarHeight * 1,
    child: Image.asset(
      'assets/banner.jpg',        // esta es la imagen del banner
      fit: BoxFit.cover,
    ),
  ),
),          //aqui termuna el appbar
      // Aquí está el menú
      drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Container(
            width: 160,
            height: 160, 
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/lcedes.jpg'),   // este es el icono que aparece cuadno abres el menu hamburguesa
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        margin: EdgeInsets.all(0.0), 
        padding: EdgeInsets.all(0.0),
      ),




// El ListTile es la tarjeta de opciones dentro del menu hamburguesa copia y pega las que necesites


     ListTile(
        leading: Icon(Icons.info),       // icono
        title: Text('Acerca de'),         //texto en la tarjeta 
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pagina1()),    //donde dice pagina 1 es hacia a donde se dirigira 
          );
        },
      ),
      



ListTile(
        leading: Icon(Icons.info),       // icono
        title: Text('Pagina2'),         //texto en la tarjeta 
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pagina2()),    //donde dice pagina 1 es hacia a donde se dirigira 
          );
        },
      ),
      

ListTile(
        leading: Icon(Icons.info),       // icono
        title: Text('Pagina3'),         //texto en la tarjeta 
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pagina3()),    //donde dice pagina 1 es hacia a donde se dirigira 
          );
        },
      ),




ListTile(
        leading: Icon(Icons.info),       // icono
        title: Text('Pagina4'),         //texto en la tarjeta 
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Pagina4()),    //donde dice pagina 1 es hacia a donde se dirigira 
          );
        },
      ),



    ],
  ),
), // aqui termina el menu
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Noticias',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _newsList.length,
                itemBuilder: (BuildContext context, int index) {
                  final news = _newsList[index];
                  return Card(
                    child: InkWell(
                      onTap: () {
                        FlutterWebBrowser.openWebPage(
                          url: news["url"],
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    news["title"],
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(news["description"]),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              news["imageUrl"],
                              width: 150.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}