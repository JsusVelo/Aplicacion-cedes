import 'package:cedesapp/Pagina1.dart';
import 'package:cedesapp/pagina3.dart';
import 'package:cedesapp/pagina4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:carousel_slider/carousel_slider.dart';





class Pagina2 extends StatefulWidget {
  const Pagina2({Key? key}) : super(key: key);

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  int? expandedIndex;
  final List<Map<String, dynamic>> _cardData = [


    //aqui actulizas la ifnromacion del slider 
    {
      'title': 'V COLOQUIO INTERNACIONAL "LAS CIENCIAS DE LA EDUCACIÓN EN FUNCIÓN DEL DESARROLLO HUMANO"',
      'imageUrl': 'assets/home1.jpg',
      'url': 'https://coloquio.edunetic.com/',
    },
    {
      'title': 'TALLERES CON PERSPECTIVA DE GÉNERO Y DERECHOS HUMANOS DE JARDINERÍA Y COMPUTACIÓN',
      'imageUrl': 'assets/talleresalbarrada.jpeg',
      'url': 'https://www.facebook.com/photo?fbid=715462020600035&set=a.351187030360871&locale=es_LA',
    },
    {
      'title': 'COLOQUIO DE INFRAESTRUCTURA VERDE 2023 EN TUXTLA GUTIÉRREZ, CHIAPAS',
      'imageUrl': 'assets/infraverde.jpg',
      'url': 'https://www.cedes.unach.mx/index.php/component/k2/item/326-coloquio-de-infraestructura-verde-2023-en-tuxtla-gutierrez-chiapas-222',
    },
  ];

  void _openWebPage(String url) {
    FlutterWebBrowser.openWebPage(
      url: url,
      customTabsOptions: CustomTabsOptions(
        colorScheme: CustomTabsColorScheme.dark,
        toolbarColor: Colors.deepPurple,
        secondaryToolbarColor: Colors.green,
        navigationBarColor: Colors.amber,
        addDefaultShareMenuItem: true,
        instantAppsEnabled: true,
        showTitle: true,
        urlBarHidingEnabled: true,
      ),
    );
  }

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
        children: [
          Container(





//asi agreags texto encima 
            
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Desde el año 2017, la Universidad Autónoma de Chiapas (UNACH) en México, a través del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES); el Instituto de Cooperación Internacional de la Asociación Alemana para la Educación de Adultos (Deutscher Volkshochschul-Verband e.V., DVV), DVV Internacional; la Facultad Latinoamericana de Ciencias Sociales (FLACSO) con sede en Guatemala y la Unidad Académica en Quetzaltenango en Guatemala; y la Universidad de San Carlos en Huehuetenango (USAC), Guatemala, con su Unidad de Vinculación del Centro Universitario del Nor Occidente (CUNOROC); realizaron un intercambio de experiencias e investigaciones relacionadas con el eje: Migración, Educación y Desarrollo (MED), específicamente en los departamentos de Guatemala y los municipios de Chiapas, México que se ubican en la zona transfronteriza entre ambos países, y que presentan un alto índice de pobreza, pobreza extrema y marginación.',
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.justify,
            ),
          ),




          //te deje un slider para las noticias que tiene la pagina del cedes   en la parte de arriba actuakizas todo
          CarouselSlider(
            options: CarouselOptions(
              height: 270.0,
              autoPlay: true,
            ),
            items: _cardData.map(
              (data) => GestureDetector(
                onTap: () {
                  _openWebPage(data['url']);
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        data['imageUrl'],
                        height: 210,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          data['title'],
                          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ).toList(),
          ),
        ],
      ),
    );
  }
}