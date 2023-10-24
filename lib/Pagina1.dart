
import 'package:cedesapp/pagina2.dart';
import 'package:cedesapp/pagina3.dart';
import 'package:cedesapp/pagina4.dart';
import 'package:flutter/material.dart';

import 'package:flutter_web_browser/flutter_web_browser.dart';


class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  
  

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


      body: ListView.builder(
        itemCount: 1, 
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: <Widget>[



//esta es una clse de texto tipo encabezado
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Publicaciones',   //titulo
                  style: TextStyle(
                    fontSize: 30.0,   //tamaño
                    fontWeight: FontWeight.bold,  //negritasa
                  ),
                ),
              ),


//esto te servira para ponder imagenes
            Image.asset(
                  'assets/lcedes.jpg',  //ruta de imagen
                  width: 200.0,     //tamaños
                  height: 200.0,
                  fit: BoxFit.cover, 
                ), 
            SizedBox(height: 10), // Esto agrega un espacio entre la imagen y el título




//otra forma de encabezado 
            Text(
              'CAPJA', // Reemplaza esto con tu título
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10), // Esto agrega un espacio entre el título y el texto



//una forma de colocar texto 
            Text(
              'Durante el 2022 y el 2023, se diseña la Aplicación Móvil: Ciencia Abierta para Personas Jóvenes y Adultas. Es una aplicación digital para la planificación y evaluación de las ofertas educativas de los socios de DVV, elaborada de manera participativa entre las organizaciones contrapartes y aliados estratégicos. \n\n'
              'Avances:\n'
              'Desarrollo de la Interfaz gráfica de la APP, que contiene hipervínculos a las páginas oficiales de las contrapartes. Tiene el propósito de proveer información de las ofertas educativas, a través, de los distintos medios electrónicos de las contrapartes y aliados estratégicos de DVV-International. Con la CAPJA, se dan conocer los beneficios, plan de estudios, campo laboral y demás características que ofrecen los programas educativos ofertados. La aplicación se encuentra lista en su primera etapa, se continua con el proceso de actualización de la información de cada una de las contrapartes y aliados.\n\n'
              'La aplicación "Ciencia Abierta para Personas Jóvenes y Adultas" es una plataforma interactiva que busca acercar la ciencia de una manera lúdica y educativa a la población. A través de la aplicación, los usuarios pueden acceder a una gran variedad de contenidos científicos, noticias y recursos de aprendizaje, diseñados específicamente para personas jóvenes y adultas con diferentes niveles de conocimiento. \n\n'
              'La aplicación cuenta con una interfaz amigable y fácil de usar, que permite a los usuarios explorar diferentes áreas de la Educación. Además, la aplicación ofrecerá herramientas interactivas, juegos y desafíos que fomentan el aprendizaie y la curiosidad.\n\n'
              'La aplicación también incluye una sección de noticias científicas actualizadas, para que los usuarios estén al día en los últimos avances y descubrimientos en el mundo de la ciencia, así como de las actividades que realizan las contrapartes y aliados de DVV-International. Además, ofrece recursos de aprendizaje adicionales, como videos educativos, infografías y artículos especializados, para aquellos que buscan profundizar su conocimiento en áreas específicas.\n\n',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.justify,
            ),



//esta es otra forma de agreagr textos
 Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Desde el año 2017, la Universidad Autónoma de Chiapas (UNACH) en México, a través del Centro de Estudios para el Desarrollo Municipal y Políticas Públicas (CEDES); el Instituto de Cooperación Internacional de la Asociación Alemana para la Educación de Adultos (Deutscher Volkshochschul-Verband e.V., DVV), DVV Internacional; la Facultad Latinoamericana de Ciencias Sociales (FLACSO) con sede en Guatemala y la Unidad Académica en Quetzaltenango en Guatemala; y la Universidad de San Carlos en Huehuetenango (USAC), Guatemala, con su Unidad de Vinculación del Centro Universitario del Nor Occidente (CUNOROC); realizaron un intercambio de experiencias e investigaciones relacionadas con el eje: Migración, Educación y Desarrollo (MED), específicamente en los departamentos de Guatemala y los municipios de Chiapas, México que se ubican en la zona transfronteriza entre ambos países, y que presentan un alto índice de pobreza, pobreza extrema y marginación.',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),







//otra especie de encabezado 
                Center(
  child: Text(
    'Convenio de Colaboración Interinstitucional',
     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    textAlign: TextAlign.justify,
    ),
),





//este es un boton para abrir un navegador

ElevatedButton(
      onPressed: () {
        FlutterWebBrowser.openWebPage(url: "https://www.cedes.unach.mx/index.php");//el enlace 
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),//dimensiones 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),//bordes
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline, color: Colors.white),  //icono
          SizedBox(width: 10),
          Text(
            'Boton para abrir el navegador',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    ),
    SizedBox(height: 20),






            ],
          );
        },
      ),
    );
  }
}
