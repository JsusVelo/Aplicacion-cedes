import 'package:cedesapp/Pagina1.dart';
import 'package:cedesapp/pagina2.dart';
import 'package:cedesapp/pagina3.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';



class Pagina4 extends StatelessWidget {
final List<Contact> contactsc = [    Contact(name: 'Dra. Andrea Mena Álvarez', position: 'Coordinadora General', phone: '9616178000 ext. 5540, 5541', email: 'andrea.mena@unach.mx'),
Contact(name: 'Mtra. Maria Honorata López Morales', position: 'Encargada de la Secretaría Académica', phone: '9616178000 ext. 5543, 5544', email: 'honorata.lopez@unach.mx'),
Contact(name: 'Lic. César Octavio Cancino Ayala', position: 'Secretario Administrativo', phone: '9616178000 ext. 5542', email: 'cesar.cancino@unach.mx'),
Contact(name: 'Lic. Graciela del Carmen Pulido Serrano', position: 'Coordinadora de Planeación y Evaluación', phone: '9616178000 ext. 5544', email: ''),
Contact(name: 'Dr. Dorian Francisco Gómez Hernández', position: 'Coordinador de Investigación y Posgrado', phone: '9616121082', email: 'dorian.gomez@unach.mx'),
Contact(name: 'Mtro. Rolando Antonio Espinosa', position: 'Coordinador de la Licenciatura en Desarrollo Municipal y Gobernabilidad', phone: '9611374316', email: 'cedes.ldmg@unach.mx'),
Contact(name: 'Biól. María Stefany Gordillo Martínez', position: 'Coordinadora de la Licenciatura en Estadística y Sistemas de la Información', phone: '9611205528', email: 'cedes.lesi@unach.mx'),
Contact(name: 'Mtro. Ramíro Jiménez Zavaleta', position: 'Encargado de Control Escolar', phone: '9616178000 ext. 5545', email: 'controlescolar.cedes@unach.mx'),
Contact(name: 'Mtra. Rocío Aguilar Sánchez', position: 'Coordinadora de Extensión y Vinculación', phone: '9616178000 ext. 5544', email: 'rocio.aguilar@unach.mx'),
Contact(name: 'Mtra. Fátima Guadalupe Laguna Vázquez', position: 'Coordinadora de Tutorias y Encargada del Centro Psicopedagógico', phone: '9612606987', email: 'patcedes@unach.mx'),
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
      body:


ListView(
  children: <Widget>[
    Column(
      children: <Widget>[
        Image.asset(
          'assets/lcedes.jpg',
          width: 300.0,
          height: 300.0,
          fit: BoxFit.cover,
        ),

        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'CEDES',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Impulsar el mejoramiento del nivel de desarrollo sustentable de los municipios de la entidad a través de la docencia, la investigación y la extensión universitaria, estableciendo redes de colaboración entre la UNACH, los Ayuntamientos Municipales y demás actores del desarrollo.',
            style: TextStyle(
              fontSize: 16.0,
             
            ),
            textAlign: TextAlign.justify,
          ),
        ),
  Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Misión',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
 Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Es el órgano académico de la Universidad Autónoma de Chiapas, cuya actividad docente, de investigación y extensión está orientada a contribuir al mejoramiento del nivel de desarrollo de los municipios del estado de Chiapas, principalmente aquellos con menor índice de Desarrollo Humano.',
            style: TextStyle(
              fontSize: 16.0,
             
            ),
            textAlign: TextAlign.justify,
          ),
        ),
 Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Visión',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Ser un órgano académico con programas educativos acreditados, procesos administrativos certificados y cuerpos académicos consolidados, integrado a redes de colaboración con ayuntamientos municipales, universidades nacionales e internacionales y demás actores del desarrollo.',
            style: TextStyle(
              fontSize: 16.0,
             
            ),
            textAlign: TextAlign.justify,
          ),
        ),



Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    ElevatedButton(
      onPressed: () {
        FlutterWebBrowser.openWebPage(url: "https://www.cedes.unach.mx/index.php");
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.blue,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline, color: Colors.white),
          SizedBox(width: 10),
          Text(
            'Conócenos',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ],
      ),
    ),
    SizedBox(height: 20),
  ],
),











Padding(
padding: EdgeInsets.symmetric(vertical: 10),
child: ElevatedButton(
onPressed: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) => DirectoryPage(contacts: contactsc)),
);
},
style: ElevatedButton.styleFrom(
primary: Colors.blue,
padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(25),
),
),
child: Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(Icons.folder_open, color: Colors.white),
SizedBox(width: 10),
Text(
'Directorio',
style: TextStyle(fontSize: 20, color: Colors.white),
),
],
),
),
)











            ],
          ),
        ],
      ),
    );
  }
}
class DirectoryPage extends StatelessWidget {
  final List<Contact> contacts;

  DirectoryPage({required this.contacts});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
  child: Text(
    'Rectoría',
    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    textAlign: TextAlign.justify,
    ),
),
SizedBox(height: 16),

        


          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text(contacts[index].name),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(contacts[index].position),
                        Text(contacts[index].phone),
                        Text(contacts[index].email),
                      ],
                    ),
                    onTap: () {
                      launch('tel:${contacts[index].phone}');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class Contact {
  final String name;
  final String position;
  final String phone;
  final String email;

  Contact({required this.name, required this.position, required this.phone, required this.email});
}